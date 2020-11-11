Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F742AF35C
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Nov 2020 15:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P3KfT56cJCeq+wTVPCQcIZgFsoMsMSY1F3/wZhcvR3M=; b=Rg/DddG38YPMm7eUheXIuX3Y79
	yNzy/bWJ7pv7jEzGoGVKM09icgm1Ta+nDb8xzi7vvzTN2+ROCPPbpG7P75Wb63mTXMX+/+lRQBy+b
	1urTNjIg3fvn/iXR+UMVYFALtS7664aEc3qCukazIDKMrUr5SJlRCR5Md+IPsPDw68S4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kcqwz-0007cz-Mi; Wed, 11 Nov 2020 14:18:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dvyukov@google.com>) id 1kcqwz-0007cl-5E
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 14:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LMnlJ2VRlaOy+haUyyLTMNZ0UZN6e6p3lev+fiH8MWQ=; b=LqyvGo8VajVplXscl3+WuL5vO
 wvqI7dXEbSe6GMcPgSYV6AcBqtX7IrtsCVVMc6pyRxrFkcBuZc1nPSP6CUJY8sdlcUdmsGyjtEblf
 S5UWyERRBylYYlNkYL2HrdJQ7LNhpMvo1WXO4VQZHdpt5rJKfmqf7iT7hTiVKeMqWDUxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LMnlJ2VRlaOy+haUyyLTMNZ0UZN6e6p3lev+fiH8MWQ=; b=Ghb9G7C67QEAO7dKVNNNAKa5KT
 LPOrbfiKk5mF2dRMWVGmH2elWlfuW5XEmHkJfWQS6yeZ4S0YNJJtpRM6q+DoFy2SPNkvwiDTq6GT7
 T0B5/irHUBu4r+u/W1+oyl3//UnlwAd4eGpuXwEBxIh796Bcg7rdm/oIDHSXPIZWs45Q=;
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kcqwl-00Gt8i-5X
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 14:18:16 +0000
Received: by mail-qt1-f195.google.com with SMTP id g17so1348363qts.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Nov 2020 06:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=LMnlJ2VRlaOy+haUyyLTMNZ0UZN6e6p3lev+fiH8MWQ=;
 b=nL2rYwNnyY2XC7fcLKOB2btPl2qk4U78gZnijZ1GWhNx5Wgvv8v/SrldceQD1ldpU2
 Rm2oacK+IAi9LUKdDe50BQ0UnNeN21WnPUcYRz0seWMAtCdVUy3a5v3uaglbFU1d/fdc
 xur0kdwJUekyq3s+B5H9bTO2JXzQfyy8eSQiRY/a0ZTlAZWPayRP9IbzaeWxwz/e++Xs
 b2HoDWpyN3vfVVSU7urhtS7Smg0T1E5Kdg1biWRjDXRdhjIz3fxJ/oAmGVYuMW8Veoc8
 bhUJUIqeC9cFJG5vPsJLCFZputHy3v6EmhsvqOqBDukGK1+l6ZThSM2ltMrsbr3ZQ4aU
 QdBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=LMnlJ2VRlaOy+haUyyLTMNZ0UZN6e6p3lev+fiH8MWQ=;
 b=awgxuyo9mXmB7a7cPMR22E70LI0Q9WPAMes2c5Fd8/UMkR1vXBeigZ/xCp+ulUU8IE
 hWV+/DSIUZ7tudhbs5MogUim2X+2wr9gTo5hfEDABd2XzzihHgtN3qey00Ic7wy95IGB
 OdbeftVAocl2jw7g3eWyYUSv5iVK1dutYj6pCgD53YtTx0BvmxdEr+MY9YmDyS43yf8L
 Q8xZRYCYgk5WLzjnTR0lu7QbvVEoNsOMnHk8CQWsLU2p0YdvYYDohiSGbiu+V9vj9NLJ
 0gZmhscNrnRcJkfwobnQ7XiRUMSvhVedh/GVW1tCxr9+sr7qUQ+J1HKMVaPEjnoJ9th2
 3/BQ==
X-Gm-Message-State: AOAM530TZ0BEi0IZ0Ysr5+iPjUC59T7NMjvXp8PN1WdnGI6uMsu/BzeO
 yWHS9VmJxHuw6MdzhQEZ2n/KdctRBATz2IA2pI8si7l5CXSVvP0P
X-Google-Smtp-Source: ABdhPJxDKIPaFA0Ln02v+76S56BqDnkGV/4xBzsRqEHYdC7SlVTuD6d08kqCmRgx6E3L56XOxy4v7x9ThnV9w1GZAaU=
X-Received: by 2002:aed:2b47:: with SMTP id p65mr22140084qtd.337.1605102864435; 
 Wed, 11 Nov 2020 05:54:24 -0800 (PST)
MIME-Version: 1.0
References: <000000000000eb6a8e057ab79f82@google.com>
 <00000000000098e02c05ace3bbfb@google.com>
In-Reply-To: <00000000000098e02c05ace3bbfb@google.com>
Date: Wed, 11 Nov 2020 14:54:13 +0100
Message-ID: <CACT4Y+YqTf9X84=vtWjiL6CJeqp08VkpRSBTmHWaxM-OERdLYg@mail.gmail.com>
To: syzbot <syzbot+edec7868af5997928fe9@syzkaller.appspotmail.com>, 
 LKML <linux-kernel@vger.kernel.org>, 
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1kcqwl-00Gt8i-5X
Subject: Re: [V9fs-developer] WARNING: refcount bug in p9_req_put
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
From: Dmitry Vyukov via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Aug 15, 2020 at 7:23 AM syzbot
<syzbot+edec7868af5997928fe9@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit a39c46067c845a8a2d7144836e9468b7f072343e
> Author: Christoph Hellwig <hch@lst.de>
> Date:   Fri Jul 10 08:57:22 2020 +0000
>
>     net/9p: validate fds in p9_fd_open
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1015f012900000
> start commit:   459e3a21 gcc-9: properly declare the {pv,hv}clock_page sto..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=ef1b87b455c397cf
> dashboard link: https://syzkaller.appspot.com/bug?extid=edec7868af5997928fe9
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1642ee48a00000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: net/9p: validate fds in p9_fd_open
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

#syz fix: net/9p: validate fds in p9_fd_open


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
