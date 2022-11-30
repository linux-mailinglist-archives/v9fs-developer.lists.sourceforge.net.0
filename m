Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A1263D69A
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 14:22:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0N3A-0004sQ-1U;
	Wed, 30 Nov 2022 13:22:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0N2x-0004rC-LK
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gIR1B57sG32Q6BaEtfiufxFGGFeXy7wbZX9GDO4FCdQ=; b=NkgsgQvfHnmtlRvAq+XIPVGbJs
 HJVLmj7IYeMQjuLJDZ3RxMmgNXSuL/J+M3Ra5a5FP7Cx7Q0rrIiTajvDJKJW2jpSvnGPHmJ9vF2+u
 EdCPdlGw6fAetCSbPWnYWyKP/9nsPov8acHIILl4XkdvAI58i4XMtvVUUoSwxdoe+H2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gIR1B57sG32Q6BaEtfiufxFGGFeXy7wbZX9GDO4FCdQ=; b=Q5QUzeYdCidWVP09VMehxeY57d
 se18nq5hIsW9Fp7R7AjxWsxJAL43vqaOn3Z/We9iNqLdij9NThXWYzuE6ngR1leHQw4xJa/FSub/s
 z8xGzYOZvSgAF5iJ0e//c4CIqTwOb9rCXPXT/R/e9aXhoqrnmKqEoKflQ5UQsH3b5mYA=;
Received: from mail-pg1-f172.google.com ([209.85.215.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0N2m-0000Zx-M9 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:22:36 +0000
Received: by mail-pg1-f172.google.com with SMTP id w37so10888198pga.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Nov 2022 05:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
 bh=gIR1B57sG32Q6BaEtfiufxFGGFeXy7wbZX9GDO4FCdQ=;
 b=FsTqhqzfiIFw2RcD7UUXmeZ8vh1cJ9X0IMc9qQV1OPP4AWIL+bSEQ1U1SRcAVVjsjp
 TJuagojnh7kjO9ag/ctnu2aiXofUVnvDYx8FEDKOl6fjH1d9PDCzOJK7rj8spfiv2+lr
 wWbEp2jdCxPZcPDfD7ZdmYpSswN29gihNJdkR26VDSwWMzcJuN8iKTtbUeWSC+5vcGkq
 +Eds8G2onZc8+d2bVCGJ7DluWt8T9xG0uQezCuLl2Z/J6HqH9n1bZmuMUn55owxyM4PP
 dwmKNVY5W+NNB7zdPVL1BM8G7WaXeRNibwIXT7ZBeAqKeCfKxdMXnGQoIydllEMlHe5X
 zdfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gIR1B57sG32Q6BaEtfiufxFGGFeXy7wbZX9GDO4FCdQ=;
 b=W9o9wlXICE6QnGVe+p3ve+OaZYJJytgEuIbQykJ0xBQ6c570K11++V8Lt1Yw579DEK
 eVSi54zTypNf1hJtbFLe5fycI8S3X29otB4xqCKZWbfdODa3R5NPuYpMSKieXvHSqz/K
 sfNYNTCp+Jhhtg2LALC6E3ok/wU+zwIWnNrf7XP02/MxHvoyQsSQh4uxpkJu8ED626xW
 q8hhfLz3z1ts7fii/ozBfNR1/3QrZgEwl9wOXPhE4Q3SFFMyHSUJhiBq6DvLuVb7G6PC
 mfkma2Vxehqyt4yvD/B+OnLyBH980UsAYXMHGNF4JMS4I53besx9ZCyFKo6WhqBvnUYo
 YOOw==
X-Gm-Message-State: ANoB5pmUkaOpQywEEUEJchC/aQ8felgt24IgWhbzYw/wvqe/1lmPOtEB
 JG0TXeTNzbT9Wp4tgWmBy/E=
X-Google-Smtp-Source: AA0mqf5MWIBTLkJGoApQdBkYKO67SZD/1DSocER0gcLkKOph67tCE315jhJAw2gAJEGIRu/4dgk2ug==
X-Received: by 2002:a63:f406:0:b0:477:cc1f:204 with SMTP id
 g6-20020a63f406000000b00477cc1f0204mr28290048pgi.592.1669814547061; 
 Wed, 30 Nov 2022 05:22:27 -0800 (PST)
Received: from MBP (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 fa13-20020a17090af0cd00b00218abadb6a8sm1226030pjb.49.2022.11.30.05.22.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Nov 2022 05:22:26 -0800 (PST)
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org> <m2r0xli1mq.fsf@gmail.com>
 <Y4b1MQaEsPRK+3lF@codewreck.org> <m2o7sowzas.fsf@gmail.com>
 <Y4c5N/SAuszTLiEA@codewreck.org>
User-agent: mu4e 1.8.10; emacs 28.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Wed, 30 Nov 2022 21:15:12 +0800
In-reply-to: <Y4c5N/SAuszTLiEA@codewreck.org>
Message-ID: <m2a6487f23.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Schspa Shi wrote on Wed, Nov 30, 2022 at 04:14:32PM +0800:
 >> > - reqs are alloced in a kmem_cache created with SLAB_TYPESAFE_BY_RCU.
 >> > This means that if we get a req from idr_find, even if it h [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.172 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.172 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p0N2m-0000Zx-M9
Subject: Re: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


asmadeus@codewreck.org writes:

> Schspa Shi wrote on Wed, Nov 30, 2022 at 04:14:32PM +0800:
>> >  - reqs are alloced in a kmem_cache created with SLAB_TYPESAFE_BY_RCU.
>> >  This means that if we get a req from idr_find, even if it has just been
>> >  freed, it either is still in the state it was freed at (hence refcount
>> >  0, we ignore it) or is another req coming from the same cache (if
>> 
>> If the req was newly alloced(It was at a new page), refcount maybe not
>> 0, there will be problem in this case. It seems we can't relay on this.
>> 
>> We need to set the refcount to zero before add it to idr in p9_tag_alloc.
>
> Hmm, if it's reused then it's zero by definition, but if it's a new
> allocation (uninitialized) then anything goes; that lookup could find
> and increase it before the refcount_set, and we'd have an off by one
> leading to use after free. Good catch!
>
> Initializing it to zero will lead to the client busy-looping until after
> the refcount is properly set, which should work.

Why? It looks no different from the previous process here. Initializing
it to zero should makes no difference.

> Setting refcount early might have us use an re-used req before the tag
> has been changed so that one cannot move.
>
> Could you test with just that changed if syzbot still reproduces this
> bug? (perhaps add a comment if you send this)
>

I have upload a new v2 change for this. But I can't easily reproduce
this problem.

> ------
> diff --git a/net/9p/client.c b/net/9p/client.c
> index aaa37b07e30a..aa64724f6a69 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -297,6 +297,7 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
>  	p9pdu_reset(&req->rc);
>  	req->t_err = 0;
>  	req->status = REQ_STATUS_ALLOC;
> +	refcount_set(&req->refcount, 0);
>  	init_waitqueue_head(&req->wq);
>  	INIT_LIST_HEAD(&req->req_list);
>
> ----- 
>
>> >  refcount isn't zero, we can check its tag)
>> 
>> As for the release case, the next request will have the same tag with
>> high probability. It's better to make the tag value to be an increase
>> sequence, thus will avoid very much possible req reuse.
>
> I'd love to be able to do this, but it would break some servers that
> assume tags are small (e.g. using it as an index for a tag array)
> ... I thought nfs-ganesha was doing this but they properly put in in
> buckets, so that's one less server to worry about, but I wouldn't put
> it past some simple servers to do that; having a way to lookup a given
> tag for flush is an implementation requirement.
>
> That shouldn't be a problem though as that will just lead to either fail
> the guard check after lookup (m->rreq->status != REQ_STATUS_SENT) or be
> processed as a normal reply if it's already been sent by the other
> thread at this point.
> OTOH, that m->rreq->status isn't protected by m->req_lock in trans_fd,
> and that is probably another bug...

Yes, I aggree with you, another BUG.

-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
