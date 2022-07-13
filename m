Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D79573430
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 12:30:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBZd8-00007S-Fb; Wed, 13 Jul 2022 10:30:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBZd5-00007L-3t
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 10:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qLz+5R8RCeiMftnCU0fcTqHOO2P7o9jbQNcKqiUKKF0=; b=WDG5g7H5h7GTbp6FwFbuV4o/VI
 EMxKy1CsF1LbsN4cfwSEE+YiiQpbutQjdYDwAiN+3utcZwQutgrf9fjcTJ9VWwrhLYlneToeRGg2n
 MpS2CIWaz6dhA8i2AIn1XHIWftWo6UjhszGJK55ZG+dvnLVbeQKJebQYcwKZ/DaQC8ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qLz+5R8RCeiMftnCU0fcTqHOO2P7o9jbQNcKqiUKKF0=; b=OQU/TFn37reQW+AGjLxSufU62k
 0WxrEsKSzTzODOSkVp7RAhK7fS5KKz+wwiCXBX17aALjHnXN06FtfPqHarZwgXKAjAeuzK1F5CZDV
 r+uWd91NYr8fFQbpzuilwvjmsDatwead94pa5lAvi/AfjpQ69gsGNcwOeMMbE4EMRZbM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBZd1-00FaLy-0e
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 10:30:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 8B46EC01D; Wed, 13 Jul 2022 12:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657708192; bh=qLz+5R8RCeiMftnCU0fcTqHOO2P7o9jbQNcKqiUKKF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uaphRgkkjGHLmhnNjos735vkPHpvGKBQW9DojRvW2vOZ61r0s/BYP4/p2AptQDqLt
 HtYqq/E4qwgP2OUwCj8iVmOe/RAZQV2PQTIkW7ZVMFZbWu4Pzg4IV7ZrCxYpsBq+F6
 36gcizbOZ8oUHK4PsZ7hph0lHorpT6tLJzjgBHxdXH2XkJ5dmlKq1f8NnYGDWWOTGo
 MqKQOHfqkT+yNXHAS8slSiFf3GuohV2oacKVOHQfUA1wtutwxm7mpsHSiThAagQ2Wf
 aTuliaz7Pe2k8iiYttQwh/H6XH+p2X9fT0BVGx0Z37i6AwwR8Ca67K+Krc02IUc62E
 lyc9mJyYAPGUw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 27C08C009;
 Wed, 13 Jul 2022 12:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657708191; bh=qLz+5R8RCeiMftnCU0fcTqHOO2P7o9jbQNcKqiUKKF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FG1cgmFjQHeDfu9qG+/GFilxvkhpdCHnCpSrU0jpMhwL4s3nS+Xi2Y7qD5wFjyrN3
 uBIFtvPOMobmlT4ufkZvNBh3J+NWo41yswynrzgJNUor62CMi5oXtFp8jBUALOpMyk
 +BD/EnIrXvZaCiul/kOHlw8rQgee4O1sEa+b2nWCNZopAO8eXGqsWNIzaVQMN7YlqH
 tUoGmZ3y8JaFsbty+4z7AFe1Y1QnnF2z6DS/VOzZidXxdtnnwDYvKm8dhf//ZlHQuc
 2myGOAU4CTtiWiaMa+3ab6tKwkKo8lfSplWHiQilds8yGUSvQKbS7wPX10Ct4wcIPv
 V4Jrk/4Jj6eoA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6a25c0a4;
 Wed, 13 Jul 2022 10:29:46 +0000 (UTC)
Date: Wed, 13 Jul 2022 19:29:31 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys6ei46QxeqvqOSe@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <2ade510b2e67a30c1064bcd7a8b6c73e6777b9ed.1657636554.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ade510b2e67a30c1064bcd7a8b6c73e6777b9ed.1657636554.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Jul 12,
 2022 at 04:31:33PM
 +0200: > This new function calculates a buffer size suitable for holding
 the > intended 9p request or response. For rather small message [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBZd1-00FaLy-0e
Subject: Re: [V9fs-developer] [PATCH v5 10/11] net/9p: add p9_msg_buf_size()
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:33PM +0200:
> This new function calculates a buffer size suitable for holding the
> intended 9p request or response. For rather small message types (which
> applies to almost all 9p message types actually) simply use hard coded
> values. For some variable-length and potentially large message types
> calculate a more precise value according to what data is actually
> transmitted to avoid unnecessarily huge buffers.
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>

Overally already had checked a few times but I just went through
client.c va argument lists as well this time, just a few nitpicks.


> ---
>  net/9p/protocol.c | 154 ++++++++++++++++++++++++++++++++++++++++++++++
>  net/9p/protocol.h |   2 +
>  2 files changed, 156 insertions(+)
> 
> diff --git a/net/9p/protocol.c b/net/9p/protocol.c
> index 3754c33e2974..49939e8cde2a 100644
> --- a/net/9p/protocol.c
> +++ b/net/9p/protocol.c
> @@ -23,6 +23,160 @@
>  
>  #include <trace/events/9p.h>
>  
> +/* len[2] text[len] */
> +#define P9_STRLEN(s) \
> +	(2 + min_t(size_t, s ? strlen(s) : 0, USHRT_MAX))
> +
> +/**
> + * p9_msg_buf_size - Returns a buffer size sufficiently large to hold the
> + * intended 9p message.
> + * @c: client
> + * @type: message type
> + * @fmt: format template for assembling request message
> + * (see p9pdu_vwritef)
> + * @ap: variable arguments to be fed to passed format template
> + * (see p9pdu_vwritef)
> + *
> + * Note: Even for response types (P9_R*) the format template and variable
> + * arguments must always be for the originating request type (P9_T*).
> + */
> +size_t p9_msg_buf_size(struct p9_client *c, enum p9_msg_t type,
> +			const char *fmt, va_list ap)
> +{
> +	/* size[4] type[1] tag[2] */
> +	const int hdr = 4 + 1 + 2;
> +	/* ename[s] errno[4] */
> +	const int rerror_size = hdr + P9_ERRMAX + 4;
> +	/* ecode[4] */
> +	const int rlerror_size = hdr + 4;
> +	const int err_size =
> +		c->proto_version == p9_proto_2000L ? rlerror_size : rerror_size;
> +
> +	switch (type) {
> +
> +	/* message types not used at all */
> +	case P9_TERROR:
> +	case P9_TLERROR:
> +	case P9_TAUTH:
> +	case P9_RAUTH:
> +		BUG();
> +
> +	/* variable length & potentially large message types */
> +	case P9_TATTACH:
> +		BUG_ON(strcmp("ddss?u", fmt));
> +		va_arg(ap, int32_t);
> +		va_arg(ap, int32_t);
> +		{
> +			const char *uname = va_arg(ap, const char *);
> +			const char *aname = va_arg(ap, const char *);
> +			/* fid[4] afid[4] uname[s] aname[s] n_uname[4] */
> +			return hdr + 4 + 4 + P9_STRLEN(uname) + P9_STRLEN(aname) + 4;
> +		}
> +	case P9_TWALK:
> +		BUG_ON(strcmp("ddT", fmt));
> +		va_arg(ap, int32_t);
> +		va_arg(ap, int32_t);
> +		{
> +			uint i, nwname = max(va_arg(ap, int), 0);

I was about to say that the max is useless as for loop would be cut
short, but these are unsigned... So the code in protocol.c p9pdu_vwritef
'T' has a bug (int cast directly to uint16): do you want to fix it or
shall I go ahead?

> +			size_t wname_all;
> +			const char **wnames = va_arg(ap, const char **);
> +			for (i = 0, wname_all = 0; i < nwname; ++i) {
> +				wname_all += P9_STRLEN(wnames[i]);
> +			}
> +			/* fid[4] newfid[4] nwname[2] nwname*(wname[s]) */
> +			return hdr + 4 + 4 + 2 + wname_all;
> +		}
> +	case P9_RWALK:
> +		BUG_ON(strcmp("ddT", fmt));
> +		va_arg(ap, int32_t);
> +		va_arg(ap, int32_t);
> +		{
> +			uint nwname = va_arg(ap, int);
> +			/* nwqid[2] nwqid*(wqid[13]) */
> +			return max_t(size_t, hdr + 2 + nwname * 13, err_size);
> +		}
> +	case P9_TCREATE:
> +		BUG_ON(strcmp("dsdb?s", fmt));
> +		va_arg(ap, int32_t);
> +		{
> +			const char *name = va_arg(ap, const char *);
> +			if ((c->proto_version != p9_proto_2000u) &&
> +			    (c->proto_version != p9_proto_2000L))

(I don't think 9p2000.L can call TCREATE, but it doesn't really hurt
either)

> +				/* fid[4] name[s] perm[4] mode[1] */
> +				return hdr + 4 + P9_STRLEN(name) + 4 + 1;
> +			{
> +				va_arg(ap, int32_t);
> +				va_arg(ap, int);
> +				{
> +					const char *ext = va_arg(ap, const char *);
> +					/* fid[4] name[s] perm[4] mode[1] extension[s] */
> +					return hdr + 4 + P9_STRLEN(name) + 4 + 1 + P9_STRLEN(ext);
> +				}
> +			}
> +		}
> +	case P9_TLCREATE:
> +		BUG_ON(strcmp("dsddg", fmt));
> +		va_arg(ap, int32_t);
> +		{
> +			const char *name = va_arg(ap, const char *);
> +			/* fid[4] name[s] flags[4] mode[4] gid[4] */
> +			return hdr + 4 + P9_STRLEN(name) + 4 + 4 + 4;
> +		}
> +	case P9_RREAD:
> +	case P9_RREADDIR:
> +		BUG_ON(strcmp("dqd", fmt));
> +		va_arg(ap, int32_t);
> +		va_arg(ap, int64_t);
> +		{
> +			const int32_t count = va_arg(ap, int32_t);
> +			/* count[4] data[count] */
> +			return max_t(size_t, hdr + 4 + count, err_size);
> +		}
> +	case P9_TWRITE:
> +		BUG_ON(strcmp("dqV", fmt));
> +		va_arg(ap, int32_t);
> +		va_arg(ap, int64_t);
> +		{
> +			const int32_t count = va_arg(ap, int32_t);
> +			/* fid[4] offset[8] count[4] data[count] */
> +			return hdr + 4 + 8 + 4 + count;
> +		}
> +	case P9_TRENAMEAT:

if we have trenameat we probably want trename, tunlinkat as well?
What's your criteria for counting individually vs slapping 8k at it?

In this particular case, oldname/newname are single component names
within a directory so this is capped at 2*(4+256), that could easily fit
in 4k without bothering.

> +		BUG_ON(strcmp("dsds", fmt));
> +		va_arg(ap, int32_t);
> +		{
> +			const char *oldname = va_arg(ap, const char *);
> +			va_arg(ap, int32_t);
> +			{
> +				const char *newname = va_arg(ap, const char *);

(style nitpick) I don't see the point of nesting another level of
indentation here, it feels cleaner to declare oldname/newname at the
start of the block and be done with it.
Doesn't really matter but it was a bit confusing with the if for TCREATE
earlier.

> +				/* olddirfid[4] oldname[s] newdirfid[4] newname[s] */
> +				return hdr + 4 + P9_STRLEN(oldname) + 4 + P9_STRLEN(newname);
> +			}
> +		}
> +	case P9_RERROR:
> +		return rerror_size;
> +	case P9_RLERROR:
> +		return rlerror_size;
> +
> +	/* small message types */

ditto: what's your criteria for 4k vs 8k?

> +	case P9_TSTAT:

this is just fid[4], so 4k is more than enough

> +	case P9_RSTAT:

also fixed size 4+4+8+8+8+8+8+8+4 -- fits in 4k.

> +	case P9_TSYMLINK:

that one has symlink target which can be arbitrarily long (filesystem
specific, 4k is the usual limit for linux but some filesystem I don't
know might handle more -- it might be worth going through the trouble of
going through it.

Ah, we can't support an arbitrary length as we won't know the size for
rreadlink before the reply comes, so we have to set some arbitrary
max. Okay for 8k.

> +	case P9_RREADLINK:

Ok as above.

> +	case P9_TXATTRWALK:

xattr names seem capped at 256, could fit 4k but ok for 8.

> +	case P9_TXATTRCREATE:

same, ok for either 4 or 8.

> +	case P9_TLINK:

name is component name inside directory so capped at 256, but ok.

> +	case P9_TMKDIR:

same

> +	case P9_TUNLINKAT:

same

> +		return 8 * 1024;
> +
> +	/* tiny message types */
> +	default:

I went through things we didn't list:
mknod has a name but it's also component within directory, so should be
consistent with mkdir/unlinkat
trename, same.

tlock contains client_id which comes from hostname.. I think that's
capped at 256 as well? so ok for 4k.

rest all looks ok to me.


--
Dominique


> +		return 4 * 1024;
> +
> +	}
> +}
> +
>  static int
>  p9pdu_writef(struct p9_fcall *pdu, int proto_version, const char *fmt, ...);
>  
> diff --git a/net/9p/protocol.h b/net/9p/protocol.h
> index 6d719c30331a..ad2283d1f96b 100644
> --- a/net/9p/protocol.h
> +++ b/net/9p/protocol.h
> @@ -8,6 +8,8 @@
>   *  Copyright (C) 2008 by IBM, Corp.
>   */
>  
> +size_t p9_msg_buf_size(struct p9_client *c, enum p9_msg_t type,
> +			const char *fmt, va_list ap);
>  int p9pdu_vwritef(struct p9_fcall *pdu, int proto_version, const char *fmt,
>  		  va_list ap);
>  int p9pdu_readf(struct p9_fcall *pdu, int proto_version, const char *fmt, ...);
OA


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
