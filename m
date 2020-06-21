Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 694FC202AEC
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jun 2020 15:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jn0VC-0007gY-6U; Sun, 21 Jun 2020 13:59:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jn0VA-0007gH-MV
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 13:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vewurYL4RT3PvWQlki3nCvTIJMlXg35oGMx6lZeoqnQ=; b=Ln6StspUkd3nc8HzIceWGWstsa
 m16aWdQ4ONxY8ltXxmxio3sa33qReYwb/7mgDihO54zCBrL+Pv5c3ev+gmQbbzW5Li66wTlsuUxbs
 NT7PjX0JRW0Xnbjyj/Ro0qLTu7dMH7Rp3NvCY3yv1OSe3++59WQIipRfhbxqG8rEfObw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vewurYL4RT3PvWQlki3nCvTIJMlXg35oGMx6lZeoqnQ=; b=SQdoRO+6djzdF5U3YRI6HAINKU
 J9p5TjaU++vrRMigTSmGiZ5vqTw42JUZw+/UoKqRqsppc8A0mz2y/9XTVw3VbEK29w4+LznrO2CK+
 MSZ1CwUUXrzSDBG52H2hAGOMMkUINmVENpco0bqLclfkYXedIIlru+6gNWAaRv0yPTEs=;
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jn0V6-00E1Xt-RM
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 13:59:16 +0000
Received: by mail-io1-f65.google.com with SMTP id o5so16646307iow.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 21 Jun 2020 06:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vewurYL4RT3PvWQlki3nCvTIJMlXg35oGMx6lZeoqnQ=;
 b=Ig1fa5DB6SeYcM+hYKkE99p+3/vtG3Fthf56KEPUiUxC/c978WNjcoM0qPl1MHcWmV
 NtvJHsF0Dxok/k4FanZWpn/GcS+5wxqcJdRaoYjtqgGrZ2Pwbho2UvVJQaQZxmt1uTFP
 zi2a19v83PEYobt3kTCxdIgttxxUO/efojSw8NnlAwM7/3KlsEbUhpLLhEvDocrHKf/3
 tfVtculHMkMtQmBH2fLwPvD8T7Y+WWEFtzWg13p5k/72CezWXul4zS5ye9Oljtwc+2yd
 QnuC1sbaug6H/LCAyfYpPR4J2PZFgJHZkHQosks3gr9PL+s0hYORDmqHa1sUORd14REA
 BWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vewurYL4RT3PvWQlki3nCvTIJMlXg35oGMx6lZeoqnQ=;
 b=gmcKBvrnCOqIV3BK3a7DbGo0cZFCTtZ7lvfyxFO2z296t999APNzC0YpGzpy1+NxgD
 IIPBFa8thJe8/5pdoFmCf1g1ACrFHJ8H/52LqX370Zg3D/nljpcwizhxwU+L+nMW44nm
 Kd1bUxCBnL7unWxbE95fVUZgSi+Bc0OjbkaFZl7wglQYvTA9dGBU6/Gn7hINGCk8xcNa
 dCpa7Zr8YgbtBG7cJdZBKKxmVTl+R3fzRBYp/WJuTkKYIV4rvAZAPzV0054q3ODJkdnP
 6u54AvNIN7gSwHoFDdK1wTQmnPjOwY4kE5RMTwFO5TpTVMUJRgEWwv4Ks3z9bBDCbV/t
 lOdA==
X-Gm-Message-State: AOAM531WaXJC310Bc5d8EKbsskL5cRPqYfw+jQFgZCSYTwvM6hYbOVoJ
 aAAd7AdeOOujwP6H6O+ipqYYUMbpOZj3D3HgtVY=
X-Google-Smtp-Source: ABdhPJx6FfnBE+hglRYT/TBZHWM9Gh2Mshx5cImM9LIkZNmDKbt1yczIAVJ4UaTA7z/kTr1TTqzGByD4aqT+zz0+xQw=
X-Received: by 2002:a6b:b5d1:: with SMTP id
 e200mr14321200iof.191.1592747947123; 
 Sun, 21 Jun 2020 06:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200621084512.GA720@nautica>
 <20200621135312.78201-1-alexander.kapshuk@gmail.com>
 <20200621135623.GA20810@nautica>
In-Reply-To: <20200621135623.GA20810@nautica>
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Date: Sun, 21 Jun 2020 16:58:30 +0300
Message-ID: <CAJ1xhMXbhVyh6Ut86cZtssbYR6q_t6tiaJFCdb-FoX1FrSaOAA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jn0V6-00E1Xt-RM
Subject: Re: [V9fs-developer] [PATCH] net/9p: Validate current->sighand in
 client.c
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Jun 21, 2020 at 4:56 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Alexander Kapshuk wrote on Sun, Jun 21, 2020:
> > Fix rcu not being dereferenced cleanly by using the task
> > helpers (un)lock_task_sighand instead of spin_lock_irqsave and
> > spin_unlock_irqrestore to ensure current->sighand is a valid pointer as
> > suggested in the email referenced below.
>
> Ack.
> I'll take this once symbol issue is resolved ; thanks for your time.
>
> --
> Dominique

Noted.
Thanks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
