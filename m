Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDF963D255
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 10:46:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0JfO-0004Lp-Ez;
	Wed, 30 Nov 2022 09:46:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0JfL-0004Lj-CR
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 09:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+w/tU+ayhTwkehfOK8SHtMU808QnEhUkne08i443iwo=; b=gLbeRxwcmxZQFRJIBFke6iiz4L
 /790z08IqOp1q6NtjPFY2MCYc9XV/jcRb9KTopl3kws4BzIierMUyX4EF1IsTwXfy26G5X2U3QL3k
 PYzeruXTH4g1gCLIvPREZnVBqMmGqffycMHJQ+QtYPmvPNTkYTMvguuq9g71CbV6WPTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+w/tU+ayhTwkehfOK8SHtMU808QnEhUkne08i443iwo=; b=ij3CTyY9E9/IO5EdoS2CjlrcBK
 lhWqz0hLA+4kXeXe8UTD+VqzWw+MQwpdwsayyaIP/9e6D43ixMJ+JgEGKkmDafmz0GyvkOGXEciF5
 J7HkPjKjoZ+MT8Hs8UsmdfxZF/+o12MoNZ8i1cpGaNt8j07GYsZMHS3qbugL+mDzdX7M=;
Received: from mail-pj1-f52.google.com ([209.85.216.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0JfK-001HCW-KQ for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 09:46:07 +0000
Received: by mail-pj1-f52.google.com with SMTP id o12so7370192pjo.4
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Nov 2022 01:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
 bh=+w/tU+ayhTwkehfOK8SHtMU808QnEhUkne08i443iwo=;
 b=GPiGiD4M+pymUFT990D5jqPZdlbcZSruG5C354xy/PsGPCT3F6u/R/Dz2aVF7yIAnW
 czJFIxQzc1HdNjo66a9ChzO6vFKiaXy6Fbb7qqHZEsPJtGbDmwZWpN8K3w5Jstwm878s
 d4WZW1cr2lzKsiA8WK324+hGyXSogk56VD06B8nLIxIDu8iK28uYExiYS9b0/04Sy7HU
 vaAVlLNCEj2LL8xAug1LgidmEWOhMuRWrDOzXuHJHraTUcXIjv2Ke72ytlb9Jn8YmZsd
 5vnS/CxQ+jFG5ohQu4+3Ms1zE1PEoqW1rwSsw+rO6tgkJYOH87b2+2hDYJakqmEogbzO
 rqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+w/tU+ayhTwkehfOK8SHtMU808QnEhUkne08i443iwo=;
 b=KWEy2vZSQRtxR9UFGuELDkYu3R1zNIuwxDYWjDq1SingO3fD1QsIQhomOpNPloilk6
 wTyMGpgE5Jqat8NqrrGTSrupz0LUh15w31u3DeumEEFCORgObzZ45Lif5XamIkhG9XxG
 ydhHhZxCu8OwbL72o+W4HMRAIFrP1QJwQfGiQsclOSVjbBl8WxyR21zs+qlj15P5YYSn
 3j4ESFJHHr9w4BreWHzl12sYbBA2FK/KIXuGYBXRjxRJwDUQhV9vxYRiVU91ooBfoZy3
 gnLocogfbTupkT0KcnAgHPGhwTBhDYCWzMXOdB3Vf9MOR/JyeL07OgVo9xQwrFDQn5hG
 SkAQ==
X-Gm-Message-State: ANoB5pmcz5RfSYMPB28AH/qjGmIwpECx577IzD8yYMhk40kIRHPfF+qw
 M2Iz++uOjggddiUIU1u/MEQ=
X-Google-Smtp-Source: AA0mqf7tK9vXUEqI2FDTGVCOJFqDEG4Yorq6ZMneFnQ17ErDPUBAP+TM8MzmjoFH33rAZdYV4XG9fA==
X-Received: by 2002:a17:90b:3c0a:b0:213:5de3:13e with SMTP id
 pb10-20020a17090b3c0a00b002135de3013emr70472277pjb.6.1669801560993; 
 Wed, 30 Nov 2022 01:46:00 -0800 (PST)
Received: from MBP ([39.170.101.209]) by smtp.gmail.com with ESMTPSA id
 24-20020a631358000000b004393f60db36sm676368pgt.32.2022.11.30.01.45.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Nov 2022 01:46:00 -0800 (PST)
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org> <m2r0xli1mq.fsf@gmail.com>
 <Y4b1MQaEsPRK+3lF@codewreck.org>
User-agent: mu4e 1.8.10; emacs 28.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Wed, 30 Nov 2022 16:14:32 +0800
In-reply-to: <Y4b1MQaEsPRK+3lF@codewreck.org>
Message-ID: <m2o7sowzas.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > (fixed Christophe's address, hopefully that will do for
 good...) > > Schspa Shi wrote on Wed, Nov 30, 2022 at 10:22:44AM +0800: >>
 > I'm happy to believe we have a race somewhere (even if no sane se [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.52 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p0JfK-001HCW-KQ
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

> (fixed Christophe's address, hopefully that will do for good...)
>
> Schspa Shi wrote on Wed, Nov 30, 2022 at 10:22:44AM +0800:
>> > I'm happy to believe we have a race somewhere (even if no sane server
>> > would produce it), but right now I don't see it looking at the code.. :/
>> 
>> And I think there is a race too. because the syzbot report about 9p fs
>> memory corruption multi times.
>
> Yes, no point in denying that :)
>
>> As for the problem, the p9_tag_lookup only takes the rcu_read_lock when
>> accessing the IDR, why it doesn't take the p9_client->lock? Maybe the
>> root cause is that a lock is missing here.
>
> It shouldn't need to, but happy to try adding it.
> For the logic:
>  - idr_find is RCU-safe (trusting the comment above it)
>  - reqs are alloced in a kmem_cache created with SLAB_TYPESAFE_BY_RCU.
>  This means that if we get a req from idr_find, even if it has just been
>  freed, it either is still in the state it was freed at (hence refcount
>  0, we ignore it) or is another req coming from the same cache (if

If the req was newly alloced(It was at a new page), refcount maybe not
0, there will be problem in this case. It seems we can't relay on this.

We need to set the refcount to zero before add it to idr in p9_tag_alloc.

>  refcount isn't zero, we can check its tag)

As for the release case, the next request will have the same tag with
high probability. It's better to make the tag value to be an increase
sequence, thus will avoid very much possible req reuse.

>  The refcount itself is an atomic operation so doesn't require lock.
>  ... And in the off chance I hadn't considered that we're already
>  dealing with a new request with the same tag here, we'll be updating
>  its status so another receive for it shouldn't use it?...
>
> I don't think adding the client lock helps with anything here, but it'll
> certainly simplify this logic as we then are guaranteed not to get
> obsolete results from idr_find.
>
> Unfortunately adding a lock will slow things down regardless of
> correctness, so it might just make the race much harder to hit without
> fixing it and we might not notice that, so it'd be good to understand
> the race.


-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
