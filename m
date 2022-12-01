Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7EE63E81C
	for <lists+v9fs-developer@lfdr.de>; Thu,  1 Dec 2022 04:01:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0ZpH-00039Q-6S;
	Thu, 01 Dec 2022 03:01:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0ZpF-00039K-FC
 for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 03:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y5SYxpBI7GimwE3d7ybl3wRGWGVGzAUnabS54e7bxDY=; b=CZ1uBy4BIGu6AbwFQ/DejfkHQS
 cSUWbEDOQiMD7Gr2wfZJWX+i5+UHkP19AkMSXH+1cgNTm4cRv1Qv/tO8+Ws1mkmgsaIoaE2A8ol7p
 /BFJz3PLUleXHro/Xpq2VCi+dukEwVpxwhs3QIaDriqTbELEHz5h+mlAPAyDQXwtAOJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y5SYxpBI7GimwE3d7ybl3wRGWGVGzAUnabS54e7bxDY=; b=S9vSiOiX6vdETMUs7E2tr2YQsR
 B40J9VpKACBbpoZHj7E+8dQjyPA/bQukoTIVT4JPeqL0QHjYAm7slKgRS0lNef5mGIS8hK1v/JVvf
 3Hg1J7ruewWCivsX36J49hLI3Ms2ACHryEGQD0tYjI5SGi27Bqb3mp5CaEntI7LsPwiE=;
Received: from mail-pf1-f177.google.com ([209.85.210.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0ZpA-0003jb-7K for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 03:01:25 +0000
Received: by mail-pf1-f177.google.com with SMTP id x66so635467pfx.3
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Nov 2022 19:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
 bh=Y5SYxpBI7GimwE3d7ybl3wRGWGVGzAUnabS54e7bxDY=;
 b=QVmCUwKUAtJKgzojk+tHegMuxgfZ1SSDWXFRGkmqn1+O+CvXy5OKQ2XFdG1CeVd7Bo
 Bwbe7nQD6X0NpDYd/EBkW6AMTYounrQR2fi+XR/b3pZvEagupxVrwB3+DgZj3B4UKlXu
 jdBApbJrwR48BDnyY5UZKowEW19kZTBNcz3ksSYpYMH7QE2nAXpbjPhQMdtZL6CyYH92
 fT5mGigSjNfpY4wRo+NjgIAlYFWB42VCfUz/pFh1im9ss6HoBvCBDyQsdUDO+jDAripp
 Tibq0M95/oqjOpk/p9KLZEbr4ewHdPq5L9vDSauevls9E6JoJ+aSy9t3zGaqq5C97PnT
 tz8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Y5SYxpBI7GimwE3d7ybl3wRGWGVGzAUnabS54e7bxDY=;
 b=tdYToCSVz+DZX85FCe8qfEwb/+Izlu4jMfnMSdX6nTgs/eEfvC5WkhL45CmkD204wJ
 sibqxZ5lTvChU9YAbT7lcd0o8Qg0NDQDfIUl+2mT7xPciZxZAzuDvHLbpMl1vsOKFpgh
 n/AhjB9PA/Vp/e6Fh7hQzDZrnpLXMtsFjhO0nQK9/G2hpPDYgjROrSHAETe8rL90t6in
 b+jGQwWnXsFVmLx4/0sLWVn2xxSse+hsqSebPwCTbTEw/ez9xs7XBCmQezIAXNEHvrf8
 ElxfKC1mjIGZWJ4YxT/trb2t4hphOCiseQWt4gfj1vWDKE/1xQt90MB0VPscl6CHPD/D
 CvkA==
X-Gm-Message-State: ANoB5pmnIvDunP1KF9mgWjixdVA05NKNY7k00L7aNIQ2RKf42Xfugxkd
 FWE5sw/rZRAFJryy8QO1cIw=
X-Google-Smtp-Source: AA0mqf6ld2dBOXvxM8gmaV26TPOYSydDpIAYlOMokeBJQCBRwOIp1gl+JZcMGRsk1U30PeUXcUXnjQ==
X-Received: by 2002:a62:3882:0:b0:56b:9ce2:891f with SMTP id
 f124-20020a623882000000b0056b9ce2891fmr50778852pfa.43.1669863674575; 
 Wed, 30 Nov 2022 19:01:14 -0800 (PST)
Received: from MBP (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 j5-20020a17090a3e0500b00218fb211778sm3742075pjc.41.2022.11.30.19.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Nov 2022 19:01:13 -0800 (PST)
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org> <m2r0xli1mq.fsf@gmail.com>
 <Y4b1MQaEsPRK+3lF@codewreck.org> <m2o7sowzas.fsf@gmail.com>
 <Y4c5N/SAuszTLiEA@codewreck.org> <m2a6487f23.fsf@gmail.com>
 <Y4dcAGM+0xzOgSCa@codewreck.org>
User-agent: mu4e 1.8.10; emacs 28.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Thu, 01 Dec 2022 10:26:12 +0800
In-reply-to: <Y4dcAGM+0xzOgSCa@codewreck.org>
Message-ID: <m28rjr6d5f.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Schspa Shi wrote on Wed, Nov 30, 2022 at 09:15:12PM +0800:
 >> >> If the req was newly alloced(It was at a new page), refcount maybe
 not >> >> 0, there will be problem in this case. It seems we can't [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p0ZpA-0003jb-7K
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

> Schspa Shi wrote on Wed, Nov 30, 2022 at 09:15:12PM +0800:
>> >> If the req was newly alloced(It was at a new page), refcount maybe not
>> >> 0, there will be problem in this case. It seems we can't relay on this.
>> >> 
>> >> We need to set the refcount to zero before add it to idr in p9_tag_alloc.
>> >
>> > Hmm, if it's reused then it's zero by definition, but if it's a new
>> > allocation (uninitialized) then anything goes; that lookup could find
>> > and increase it before the refcount_set, and we'd have an off by one
>> > leading to use after free. Good catch!
>> >
>> > Initializing it to zero will lead to the client busy-looping until after
>> > the refcount is properly set, which should work.
>> 
>> Why? It looks no different from the previous process here. Initializing
>> it to zero should makes no difference.
>
> I do not understand this remark.
> If this is a freed request it will be zero, because we freed the request
> as the refcount hit zero, but if it's a newly allocated request then the
> memory is uninitalized, and the lookup can get anything.

Here is my misunderstanding. I thought you meant that there would be a
loop on the client side to wait for the refcount to become a non-zero
value. Actually, there is no such loop.

>
> In that case we want refcount to be zero to have the check in
> p9_tag_lookup to not use the request until we set the refcount to 2.
>
>
>> > Setting refcount early might have us use an re-used req before the tag
>> > has been changed so that one cannot move.
>> >
>> > Could you test with just that changed if syzbot still reproduces this
>> > bug? (perhaps add a comment if you send this)
>> >
>> 
>> I have upload a new v2 change for this. But I can't easily reproduce
>> this problem.
>
> Ah, I read that v2 as you actually ran some tests with this, sorry for
> the misuderstanding.
>
> Well, it's a fix anyway, so it cannot hurt to apply...


-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
