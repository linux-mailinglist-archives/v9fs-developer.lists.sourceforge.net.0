Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D4257378C
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 15:36:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBcXs-0002W7-Ec; Wed, 13 Jul 2022 13:36:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oBcXq-0002Vz-Nw
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 13:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2IdXTPD7UASV0Xgx6LgbzSTTbrxGvR06JDRqRjilINM=; b=acXfta6OnI+dffwxuZ+Da7FnYk
 fjLjCBORxRf7ws/YEs+fOPykfca7mf9vDGH99LAKLWQjqpa5Lvk0B2ARh8jU6Aa0l22hshilzlqVS
 jt8J88PuyUhII9ZyWD8ExCLlZ6mhB/PcK2aLsahV2vKqKCqH/Jl4xtY/cjA+X98oQTig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2IdXTPD7UASV0Xgx6LgbzSTTbrxGvR06JDRqRjilINM=; b=fZ2jjAxpyOKl8qsp6f4uKCwnUS
 4kRlM+gOWfMb9sv/nEeNDVIf5eUFKxrSIxjueEp6usRANjdj7q638D1tsLsOzZdD8QcHS6dvmv4NJ
 +Yx6EOO1g53EpYRd4bqGvJ84WoWYGdLiszHTd6cpgubb32adk1gbe4TF7a6n8hph1dZE=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBcXn-0001lM-1Q
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 13:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=2IdXTPD7UASV0Xgx6LgbzSTTbrxGvR06JDRqRjilINM=; b=camXDonbwWRhUxo0VeYVxusN7b
 CJBdoY3CKqAlpwm6ojlioAcR/ybWmQiYsTZYHN1Kp6svDtwQ6whaHaY/s3SVIgDg9rl0z8DQ4Gdyv
 hKFz7Y7fEaxVvr5Mg0Fez50vE9fLUqUOK33CgX3YphYav5DpLlf0tn4J5Avbey3hoa/9eyWdPuhYH
 FeZmSH4oF4qMBeVYQs5mThlyGxN8mJMCuUUisg2PkKsGMIEIhkqpL0Q/qB+GSqLLLVUS6c3mbL1aU
 UtJ8MWCEODMBncoQzZOvQZhxcN8xFyfuPC1oANSyXuZcEp4aK2rLwEYmOkjjC15B6IUZG+/0gHzoW
 e9D9bytPhLtGC3QZtBctxkelqoKldXNOaIGpVT0vI6cskrGbod9FIVVu6coO1Ngkuz0nLwZ64lM5w
 heZ6IxcWZ8W7uub3P/MsmFoxfy3JL6SB1Ynkbi6qcGAIQUV46LAFH24L+XPGAyNhFuAVTKxE7P56v
 OVkYAfCpH5uvcCjaVVAWynCxTum0LAwooYCXCwlmGUAjslIBBf5PQ/lOycWrKib4i+bS+YKwf5o2g
 pBaAeH3yTPRUy5bZe/7aJYexOJjwLwG9E1rhrd0WXWH9zW1yo0DHo8C/Eb0QYPHP+c1l0UPwbDfif
 QGKLYMGwooHNijjBGft95yyPeFQHDeVTOBdYPHeXw=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 13 Jul 2022 15:06:01 +0200
Message-ID: <5564296.oo812IJUPE@silver>
In-Reply-To: <Ys6ei46QxeqvqOSe@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <2ade510b2e67a30c1064bcd7a8b6c73e6777b9ed.1657636554.git.linux_oss@crudebyte.com>
 <Ys6ei46QxeqvqOSe@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mittwoch, 13. Juli 2022 12:29:31 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:33PM +0200:
 > > This new function calculates a buffer size suitable for h [...] 
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
X-Headers-End: 1oBcXn-0001lM-1Q
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 13. Juli 2022 12:29:31 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:33PM +0200:
> > This new function calculates a buffer size suitable for holding the
> > intended 9p request or response. For rather small message types (which
> > applies to almost all 9p message types actually) simply use hard coded
> > values. For some variable-length and potentially large message types
> > calculate a more precise value according to what data is actually
> > transmitted to avoid unnecessarily huge buffers.
> > 
> > Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> 
> Overally already had checked a few times but I just went through
> client.c va argument lists as well this time, just a few nitpicks.
> 
> > ---
> > 
> >  net/9p/protocol.c | 154 ++++++++++++++++++++++++++++++++++++++++++++++
> >  net/9p/protocol.h |   2 +
> >  2 files changed, 156 insertions(+)
> > 
> > diff --git a/net/9p/protocol.c b/net/9p/protocol.c
> > index 3754c33e2974..49939e8cde2a 100644
> > --- a/net/9p/protocol.c
> > +++ b/net/9p/protocol.c
> > @@ -23,6 +23,160 @@
> > 
> >  #include <trace/events/9p.h>
> > 
> > +/* len[2] text[len] */
> > +#define P9_STRLEN(s) \
> > +	(2 + min_t(size_t, s ? strlen(s) : 0, USHRT_MAX))
> > +
> > +/**
> > + * p9_msg_buf_size - Returns a buffer size sufficiently large to hold the
> > + * intended 9p message.
> > + * @c: client
> > + * @type: message type
> > + * @fmt: format template for assembling request message
> > + * (see p9pdu_vwritef)
> > + * @ap: variable arguments to be fed to passed format template
> > + * (see p9pdu_vwritef)
> > + *
> > + * Note: Even for response types (P9_R*) the format template and variable
> > + * arguments must always be for the originating request type (P9_T*).
> > + */
> > +size_t p9_msg_buf_size(struct p9_client *c, enum p9_msg_t type,
> > +			const char *fmt, va_list ap)
> > +{
> > +	/* size[4] type[1] tag[2] */
> > +	const int hdr = 4 + 1 + 2;
> > +	/* ename[s] errno[4] */
> > +	const int rerror_size = hdr + P9_ERRMAX + 4;
> > +	/* ecode[4] */
> > +	const int rlerror_size = hdr + 4;
> > +	const int err_size =
> > +		c->proto_version == p9_proto_2000L ? rlerror_size : rerror_size;
> > +
> > +	switch (type) {
> > +
> > +	/* message types not used at all */
> > +	case P9_TERROR:
> > +	case P9_TLERROR:
> > +	case P9_TAUTH:
> > +	case P9_RAUTH:
> > +		BUG();
> > +
> > +	/* variable length & potentially large message types */
> > +	case P9_TATTACH:
> > +		BUG_ON(strcmp("ddss?u", fmt));
> > +		va_arg(ap, int32_t);
> > +		va_arg(ap, int32_t);
> > +		{
> > +			const char *uname = va_arg(ap, const char *);
> > +			const char *aname = va_arg(ap, const char *);
> > +			/* fid[4] afid[4] uname[s] aname[s] n_uname[4] */
> > +			return hdr + 4 + 4 + P9_STRLEN(uname) + P9_STRLEN(aname) + 4;
> > +		}
> > +	case P9_TWALK:
> > +		BUG_ON(strcmp("ddT", fmt));
> > +		va_arg(ap, int32_t);
> > +		va_arg(ap, int32_t);
> > +		{
> > +			uint i, nwname = max(va_arg(ap, int), 0);
> 
> I was about to say that the max is useless as for loop would be cut
> short, but these are unsigned... So the code in protocol.c p9pdu_vwritef
> 'T' has a bug (int cast directly to uint16): do you want to fix it or
> shall I go ahead?

I'd either send a separate patch today for fixing 'T', or if you want to handle it by yourself, then just go ahead.

> > +			size_t wname_all;
> > +			const char **wnames = va_arg(ap, const char **);
> > +			for (i = 0, wname_all = 0; i < nwname; ++i) {
> > +				wname_all += P9_STRLEN(wnames[i]);
> > +			}
> > +			/* fid[4] newfid[4] nwname[2] nwname*(wname[s]) */
> > +			return hdr + 4 + 4 + 2 + wname_all;
> > +		}
> > +	case P9_RWALK:
> > +		BUG_ON(strcmp("ddT", fmt));
> > +		va_arg(ap, int32_t);
> > +		va_arg(ap, int32_t);
> > +		{
> > +			uint nwname = va_arg(ap, int);
> > +			/* nwqid[2] nwqid*(wqid[13]) */
> > +			return max_t(size_t, hdr + 2 + nwname * 13, err_size);
> > +		}
> > +	case P9_TCREATE:
> > +		BUG_ON(strcmp("dsdb?s", fmt));
> > +		va_arg(ap, int32_t);
> > +		{
> > +			const char *name = va_arg(ap, const char *);
> > +			if ((c->proto_version != p9_proto_2000u) &&
> > +			    (c->proto_version != p9_proto_2000L))
> 
> (I don't think 9p2000.L can call TCREATE, but it doesn't really hurt
> either)

Yes, Tcreate is only 9p2000 and 9p2000.u. Semantically this particular check here means "if proto == 9p.2000". I can't remember anymore why I came up with this inverted form here. I'll change it to "if (c->proto_version == p9_proto_legacy)".

> > +				/* fid[4] name[s] perm[4] mode[1] */
> > +				return hdr + 4 + P9_STRLEN(name) + 4 + 1;
> > +			{
> > +				va_arg(ap, int32_t);
> > +				va_arg(ap, int);
> > +				{
> > +					const char *ext = va_arg(ap, const char *);
> > +					/* fid[4] name[s] perm[4] mode[1] extension[s] */
> > +					return hdr + 4 + P9_STRLEN(name) + 4 + 1 + P9_STRLEN(ext);
> > +				}
> > +			}
> > +		}
> > +	case P9_TLCREATE:
> > +		BUG_ON(strcmp("dsddg", fmt));
> > +		va_arg(ap, int32_t);
> > +		{
> > +			const char *name = va_arg(ap, const char *);
> > +			/* fid[4] name[s] flags[4] mode[4] gid[4] */
> > +			return hdr + 4 + P9_STRLEN(name) + 4 + 4 + 4;
> > +		}
> > +	case P9_RREAD:
> > +	case P9_RREADDIR:
> > +		BUG_ON(strcmp("dqd", fmt));
> > +		va_arg(ap, int32_t);
> > +		va_arg(ap, int64_t);
> > +		{
> > +			const int32_t count = va_arg(ap, int32_t);
> > +			/* count[4] data[count] */
> > +			return max_t(size_t, hdr + 4 + count, err_size);
> > +		}
> > +	case P9_TWRITE:
> > +		BUG_ON(strcmp("dqV", fmt));
> > +		va_arg(ap, int32_t);
> > +		va_arg(ap, int64_t);
> > +		{
> > +			const int32_t count = va_arg(ap, int32_t);
> > +			/* fid[4] offset[8] count[4] data[count] */
> > +			return hdr + 4 + 8 + 4 + count;
> > +		}
> 
> > +	case P9_TRENAMEAT:
> if we have trenameat we probably want trename, tunlinkat as well?
> What's your criteria for counting individually vs slapping 8k at it?
> 
> In this particular case, oldname/newname are single component names
> within a directory so this is capped at 2*(4+256), that could easily fit
> in 4k without bothering.

I have not taken the Linux kernel's current filename limit NAME_MAX (255) as basis, in that case you would be right. Instead I looked up what the maximum filename length among file systems in general was, and saw that ReiserFS supports up to slightly below 4k? So I took 4k as basis for the calculation used here, and the intention was to make this code more future proof. Because revisiting this code later on always takes quite some time and always has this certain potential to miss out details.

However if you want this to be based on what the Linux kernel currently supports, then I can also adjust this code to 255 being the basis.

Independent of the decision; additionally it might make sense to add something like:

#if NAME_MAX > 255
# error p9_msg_buf_size() needs adjustments
#endif

> > +		BUG_ON(strcmp("dsds", fmt));
> > +		va_arg(ap, int32_t);
> > +		{
> > +			const char *oldname = va_arg(ap, const char *);
> > +			va_arg(ap, int32_t);
> > +			{
> > +				const char *newname = va_arg(ap, const char *);
> 
> (style nitpick) I don't see the point of nesting another level of
> indentation here, it feels cleaner to declare oldname/newname at the
> start of the block and be done with it.

Because  va_arg(ap, int32_t);  must remain between those two declarations, and I think either the compiler or style check script was barking at me. But I will recheck, if possible I will remove the additional block scope here.

> > +				/* olddirfid[4] oldname[s] newdirfid[4] newname[s] */
> > +				return hdr + 4 + P9_STRLEN(oldname) + 4 + P9_STRLEN(newname);
> > +			}
> > +		}
> > +	case P9_RERROR:
> > +		return rerror_size;
> > +	case P9_RLERROR:
> > +		return rlerror_size;
> > +
> > +	/* small message types */
> 
> ditto: what's your criteria for 4k vs 8k?

As above, 4k being the basis for directory entry names, plus PATH_MAX (4k) as basis for maximum path length.

However looking at it again, if NAME_MAX == 4k was assumed exactly, then Tsymlink would have the potential to exceed 8k, as it has name[s] and symtgt[s] plus the other fields.

> > +	case P9_TSTAT:
> this is just fid[4], so 4k is more than enough

I guess that was a typo and should have been Twstat instead?

> > +	case P9_RSTAT:
> also fixed size 4+4+8+8+8+8+8+8+4 -- fits in 4k.

Rstat contains stat[n] which in turn contains variable-length string fields (filename, owner name, group name)

> > +	case P9_TSYMLINK:
> that one has symlink target which can be arbitrarily long (filesystem
> specific, 4k is the usual limit for linux but some filesystem I don't
> know might handle more -- it might be worth going through the trouble of
> going through it.

Like mentioned above, if exactly NAME_MAX == 4k was assumed, then Tsymlink may even be >8k.

> Ah, we can't support an arbitrary length as we won't know the size for
> rreadlink before the reply comes, so we have to set some arbitrary
> max. Okay for 8k.
> 
> > +	case P9_RREADLINK:
> Ok as above.
> 
> > +	case P9_TXATTRWALK:
> xattr names seem capped at 256, could fit 4k but ok for 8.

Again current NAME_MAX (255) vs. assumed max. supported (4k) by filesystems.

> > +	case P9_TXATTRCREATE:
> same, ok for either 4 or 8.
> 
> > +	case P9_TLINK:
> name is component name inside directory so capped at 256, but ok.
> 
> > +	case P9_TMKDIR:
> same
> 
> > +	case P9_TUNLINKAT:
> same
> 
> > +		return 8 * 1024;
> > +
> > +	/* tiny message types */
> 
> > +	default:
> I went through things we didn't list:
> mknod has a name but it's also component within directory, so should be
> consistent with mkdir/unlinkat
> trename, same.

If 255 is assumed then it would be fine to not list here, otherwise with max. name 4k I should rather list it as 8k message.

> tlock contains client_id which comes from hostname.. I think that's
> capped at 256 as well? so ok for 4k.

Looks like that slipped through on my side completely. Again 255 being basis then yes it could be skipped, 4k would require being listed as 8k message then.

> rest all looks ok to me.

Thanks for the review! I know, that's really a dry patch to look at. :)

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
