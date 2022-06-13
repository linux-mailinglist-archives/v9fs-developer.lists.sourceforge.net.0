Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 978EF548004
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 09:01:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0e4s-0003cd-KI; Mon, 13 Jun 2022 07:01:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0e4q-0003cT-FB
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 07:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:From:Date:Sender:Reply-To:To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YpDF1SHYxI61u2L6DgPHZqPG6ImYo1B3buDP6pUy5ao=; b=N5uq+6xMO+CEPHdNd1/ouPU+75
 /Nc1cXNeXQCjBVYfhWNo5U0KSlKCvcBY9FpYZ4Th9UZmorJUtR7yFNO/y1sF2RCCtZGhPkLn9TIWR
 yIUppIAuEMmu0/EL3/Ei04h4S98maKYxxpQ1ZkWqgVhDMD4B7FCqN1C+uAm0HoZQWOHU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:
 From:Date:Sender:Reply-To:To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YpDF1SHYxI61u2L6DgPHZqPG6ImYo1B3buDP6pUy5ao=; b=T/mfL9CXrnoTsM/LYsxd1uPJIp
 rBp9Z4BBWVc33KZ3kB/WJg2MkbnPnscjb2BUNlY/vprm3u2f4vBEZB1jf2tRCwI30rBpggqtd/lrJ
 WGRlqG8849uS9cqoy+iWqq/r2X59a4R+N5PTZW+NwCdVu7B7kjAfPwknL0xaFFTpQivU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0e4h-0005Xt-9S
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 07:01:30 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 033D5C009; Mon, 13 Jun 2022 09:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655103677; bh=YpDF1SHYxI61u2L6DgPHZqPG6ImYo1B3buDP6pUy5ao=;
 h=Date:From:Cc:Subject:References:In-Reply-To:From;
 b=nP+RI51qW0fz4ybIzG4I+D2yZ0UPmPnRgLobBwDX9j+6b/sILVs0XaCa7cdw5W26U
 UM7YXaIMtB6jd2w2zgmmbMKa1JqwbmxsHtZH7hazVMbkH+eGaCmxZUBWyWIvUORBPX
 aYSvO3ZgOFPy2RiLDuzCJgHuK1kvMc/Mkdi8SmS72EgtoUdbukp73iXUrKZy4NWGAM
 pQGinH52CFDFTZ8jHLm2tghaTtNUbSqaJUy3HwXULu0SqJmjG5isO/gz7hx4B21ecf
 G/Ojapncb7v1CeZbHeJSZyGXVV6zvSNEQWwwMpvnin0yNWNZHuVUztC5fBMzQSfSyU
 TlTUMgTOHeopA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=MISSING_HEADERS,
 UNPARSEABLE_RELAY autolearn=no version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7E76EC009;
 Mon, 13 Jun 2022 09:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655103675; bh=YpDF1SHYxI61u2L6DgPHZqPG6ImYo1B3buDP6pUy5ao=;
 h=Date:From:Cc:Subject:References:In-Reply-To:From;
 b=g5vkwGIRlWJb8UwwjzWK20P35pU7SAYnffIyS8mRhn+XU6DqXxVMzOEFnYut0kQwh
 kDNfZxZ37VUYBbSADidP0dbzU8dgIr8TNaRby33s83SpXFtM3is4yZyk/n6RoBSwSv
 BlOrUb97JD7ooQxhGCnQb/GJGqjncvNjIstOZNaW0EV6TV9rQ0OwxGIez3CdnfeX5f
 n1IX9nZ/tHLzDO6h/P1boJ6MB8ZJGWJI/p1/wVxKSA0Wp/uIvZgRzpxNPrl2WQaaCB
 yA4tBRXZFKDEm13CS9Jx7PzZecWiEkbeKkuinhoCbYnvNtjA0fY0zRavKZIE1G7OWS
 iJOpTrDTFH5IQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 124ad89d;
 Mon, 13 Jun 2022 07:01:07 +0000 (UTC)
Date: Mon, 13 Jun 2022 16:00:52 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <YqbgpMJCVk44Q0zP@codewreck.org>
References: <20220612184659.6dff5107@rorschach.local.home>
 <20220612234634.1559778-1-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220612234634.1559778-1-asmadeus@codewreck.org>
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Mon, Jun 13, 2022 at 08:46:34AM
 +0900: > I've applied your suggestion to use DECLARE_TRACEPOINT + enable
 checks, > it doesn't seem to have many users but it looks good to m [...] 
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
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
X-Headers-End: 1o0e4h-0005Xt-9S
Subject: Re: [V9fs-developer] [PATCH v2 05/06] 9p fid refcount: add a
 9p_fid_ref tracepoint
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
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Tyler Hicks <tyhicks@linux.microsoft.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, Paolo Abeni <pabeni@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Mon, Jun 13, 2022 at 08:46:34AM +0900:
> I've applied your suggestion to use DECLARE_TRACEPOINT + enable checks,
> it doesn't seem to have many users but it looks good to me.
>
> diff --git a/include/net/9p/client.h b/include/net/9p/client.h
> index 9fd38d674057..6f347983705d 100644
> --- a/include/net/9p/client.h
> +++ b/include/net/9p/client.h
> @@ -237,8 +238,17 @@ static inline int p9_req_try_get(struct p9_req_t *r)
>  
>  int p9_req_put(struct p9_req_t *r);
>  
> +/* We cannot have the real tracepoints in header files,
> + * use a wrapper function */
> +DECLARE_TRACEPOINT(9p_fid_ref);
> +void do_trace_9p_fid_get(struct p9_fid *fid);
> +void do_trace_9p_fid_put(struct p9_fid *fid);
> +
>  static inline struct p9_fid *p9_fid_get(struct p9_fid *fid)
>  {
> +	if (tracepoint_enabled(9p_fid_ref))

This here requires __tracepoint_9p_fid_ref exported...

> diff --git a/net/9p/client.c b/net/9p/client.c
> index f3eb280c7d9d..06d67a02d431 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -928,6 +931,18 @@ static void p9_fid_destroy(struct p9_fid *fid)
>  	kfree(fid);
>  }
>  

So I've also added this here:

+/* We also need to export tracepoint symbols for tracepoint_enabled() */
+EXPORT_TRACEPOINT_SYMBOL(9p_fid_ref);
+

Which looks frequent enough to probably be the right thing to do?

(It's small enough that I won't bother repost a v3 unless something else
comes up)

> +void do_trace_9p_fid_get(struct p9_fid *fid)
> +{
> +	trace_9p_fid_ref(fid, P9_FID_REF_GET);
> +}
> +EXPORT_SYMBOL(do_trace_9p_fid_get);
> +
> +void do_trace_9p_fid_put(struct p9_fid *fid)
> +{
> +	trace_9p_fid_ref(fid, P9_FID_REF_PUT);
> +}
> +EXPORT_SYMBOL(do_trace_9p_fid_put);
> +
>  static int p9_client_version(struct p9_client *c)
>  {
>  	int err = 0;

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
