Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CB373338
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 17:58:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqJes-0007Zm-T1; Wed, 24 Jul 2019 15:58:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1hqJeq-0007ZZ-QQ
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o4D84LCgPtjuNsMw3rjXC6RIHAf3ZVuK85TcZ+I8b1w=; b=czmOo/t069wTdlfSbPSDNXnIu8
 BtP5NWy2SAY85vompgiqHBM/S+zCwINKaSsvwxTmZeJTIU8g4o7CKkJGeQBCBeAqMM8gck9KfdjMI
 E0dqvGjdsxFlXzsW/OzWZjVFr7gWbL6jAAQJBcQsVKE8KJMbAhtq3S8lywcNCarXtICo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o4D84LCgPtjuNsMw3rjXC6RIHAf3ZVuK85TcZ+I8b1w=; b=giKCh5kgJfoTRnbzl8xp4tfXM+
 N+XNTgWkp0rGhR/ar2I1jNouMOFMPsn1xUTeB0NXhW9zp210yKcfa03BU2QsyDoqkVnhDD0iIYuiB
 EQVQNOUHgkXHTavHeOMaVjHA9QGVzhQYEEGhiT+BYEK4AE94pacCHAwFig6UTsFhM9os=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqJeo-00GIT2-Cx
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:58:24 +0000
Received: by mail-lj1-f180.google.com with SMTP id v18so44971185ljh.6
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 08:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o4D84LCgPtjuNsMw3rjXC6RIHAf3ZVuK85TcZ+I8b1w=;
 b=CPK9gmfQL9qofQnCyx5nTWmqIAAA38oazi0r7gXbiO/8KZDu4FI0tP5kSoeb9wef3W
 Ff+lDMEinZmHl9x3enON93/Q2xukFqCnT3MqyowwDYE9iaW/UT0Lt9gMehS8nYtAyoqR
 6pdz+Zy2fTbdiabA1T2L/l+L3iUXgrNEnwdczk98dgvBSimPxXV9RHT+HxEA3ObtUK5N
 NlA0+XINl+S341pVKr7rFBmhdCI7Ie1Nx0QOWJdKLvWmXbMnZOO0EQkZONASX10td62p
 WvFcsKsM/NUgZf/BXwc3OLLYK2M8l0FBK9fJlCdmAAktBLqjaE9x3TA17KqMS3keGQsm
 qyAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o4D84LCgPtjuNsMw3rjXC6RIHAf3ZVuK85TcZ+I8b1w=;
 b=M9Ac45B7NeIcQr952ASX+G7UVsVO2j0LwYZOvmCCOUAiVqCbmZoASKRl+L+asZu00c
 tsS9fkmwmRN83TB4A2QZOHnpTz/mpoSO5thyKkwER4iGLLUDEXFW1Ab+n/yOlbmszQvM
 OXtC+TWm2d2RkAn8y1ru3mxQO2pPZYG7L2ipisJMDflFgyxLhdscg0WN5a7F5DULU/s3
 TG3vf4W2uCKdRWDJIuHzsAlqd8FB5qCXXTrQIuHNfvwfAz1SchzXT1WjLUzWZIrzgPTo
 zs8wr6aytGi+HkdI6fbPwP646Gu9r9pIPtGzjMhGonkPQTww7hIk8eQyA3Nw++y+Vkv/
 /41A==
X-Gm-Message-State: APjAAAXk0Ovbk8VgFM6dwr34qGyl/AyxZIlzgJ6+jGO0gbLdfnkw/anm
 dQy3Ki5WLQpf/LB9TJTx30xAFJS58pjC/6QNX1AnW7RhtOWCeA==
X-Google-Smtp-Source: APXvYqwRkA+54qopc52XX86xerVi5shYo18C+naOdx4+Q4KYykPU4n3KyigB5jBDXuwnQjCGxv5xF2wvMPknQ9B16L0=
X-Received: by 2002:a2e:a0d6:: with SMTP id f22mr18576832ljm.182.1563983895461; 
 Wed, 24 Jul 2019 08:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190718135255.GA21431@nautica>
 <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
 <20190718155744.GA31023@nautica>
 <CAKuKrB=BaJLV87e3RVwpda5KYZB4ikwh20+kvbYk0JYYwNOZig@mail.gmail.com>
 <20190724154610.GA11211@nautica>
In-Reply-To: <20190724154610.GA11211@nautica>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Date: Wed, 24 Jul 2019 17:58:04 +0200
Message-ID: <CAKuKrBnSpgPhTeih_yHCTZKEzvbu_8j1+KsE90vNsDzDDqGbpA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tessares.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqJeo-00GIT2-Cx
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jul 24, 2019 at 5:46 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
> That stack trace had kernel_init which made me look at your rootflags
> again, and this is actually normal: the root mount is 9p2000.u which
> will use this function, while the outshare mount is 9p2000.L, so all is
> working as expected here as well.
>
> I just forgot there were two different mounts involved and didn't expect
> them to use different mount options (and much less to interact with each
> other at this level), but since you found the culprit we don't need to
> look that way anymore.

That's indeed interesting to see the options are different. To be
honest, I didn't configure this and the test I was running is part of
an old test framework. I don't know why the options are different.
Do you think it would be better to use "9p2000.L" for the root mount as well?

Have a good (hot) afternoon/evening!
Matt
-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
