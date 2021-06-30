Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 895013B8938
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Jun 2021 21:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rZDLv326ddgVpVb9hkqldkttOI/3mgZUGIs+nPoT1s4=; b=XSx+lJi8aeeZPLcGQ1H8g5CtOy
	8sMuyfioyffSZgyFo37LZBRRVdJOf5hXKjXV6CLBMHLr3zq/Y6dhuD04t+6J9Mn/gF7xuGJHmffRZ
	OWbWuCcwBnQs/SEBMXyL7+2ENXYqSI5d7gXHuEp7AxSEJ+gJ4UX7YkC/zNhYvoUaKa8s=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lyg4F-000279-Dw; Wed, 30 Jun 2021 19:40:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <elver@google.com>) id 1lyg48-00026D-KV
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Jun 2021 19:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/iOfKm8Iao2lnEDiXuVXkhdoDSAmPD02L6Go09Galk=; b=Ih153zMs3smkAVMRN1t9H25TKg
 JngEq+ETfGQtVVo11JAyYyqwO1pkbRwSMR+4ahrxgsWtobpGBw8IiXtdK6c/icr79rqHkw6gvRsM3
 DgCMlXoTp9ZiycxCmcmB9Hk0fCd+Zjk2pbbHZZTRs8dL8ygaBQ145Jmn3xYQoXNcoyc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z/iOfKm8Iao2lnEDiXuVXkhdoDSAmPD02L6Go09Galk=; b=aGjPvFFwZNLvHUJZI6B22/qfUQ
 sue6BMttrr8sWHkptAjrLu0TbGfw3TdkIOvOmhlj/ajXZflFdWllJbTaUJOr51Bm9xlE5bAFJSBob
 YMOJzNE9KkjhFzwZChpKW9N6KJoKbUaDMGobrJmKESSAGGuySqn4eoM9f+JL0ov1kx5c=;
Received: from mail-ua1-f52.google.com ([209.85.222.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lyg3z-0055yN-K5
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Jun 2021 19:40:08 +0000
Received: by mail-ua1-f52.google.com with SMTP id p13so1490898uao.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Jun 2021 12:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z/iOfKm8Iao2lnEDiXuVXkhdoDSAmPD02L6Go09Galk=;
 b=aRtt5v/XSPRRplkBM50G26ktqpLURc9s+fzFCYrEE/zIXSxiZ/MHA2CSUuzqkw/IqG
 zmnOWdCW4v/HIHJtlzXhNMUzCsnn8AuB8VwkHYvPCO9tkvrwwikwQCW9T2pa90auAkzy
 f/uHfzCRxovSMaZgRvgiLPLgwHpFC7VyOO6tZIVFLgezCqRy23wD9Fx+wCSD8r0wO3Yp
 yDUbl9Ms5UzKe2jTygNQgWr2prCo8g2r2AkK95ykAhfAMBdtNoM9dHFqzyYU2vAvmC4u
 YYNLEMX/7TA1WnrVh8WhrJrk3xM4eoPDZjQr3HNRMITGeTNKALwwY/x7aH5nima+WfzD
 VMyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z/iOfKm8Iao2lnEDiXuVXkhdoDSAmPD02L6Go09Galk=;
 b=BOr6iPm8pDi1dzwxGuobrY8xscg5VjYNdctsyo6GIQikgWM84h83pj2+/E8pIAAOrR
 +tIko20dERKC8YVwxheV+z0w9z5s6ZLkPbf9tgk6l2q7BX3dD04LxwoYqAqX32ug/r/L
 kciEZRxPUlZ35JHXjV2+9rwWZwJacBp1F3jAaxhAE1v0+LG8RCWR76/W2LkHAX6Lld5i
 5KonO5Bh2ckFYXn9L0NC9l9vvguC3LgOn9LvGpChT7HqC7gCxAS25uXlD78cM72N81e3
 4uHIFvGpP5Fdfdo8dXEzb3oZjUeP/QfQB3odzb0BLRNuvpKWkUP3/Mz+gtJ22fzO928R
 Tpeg==
X-Gm-Message-State: AOAM530tPGSONXaJUegSla74VIG9hnZSZ+yql6G7FElIsOzor51aah0O
 rWm5Itc1zcj/jk8rfvzBMULfbAFaB9gA8xytItvpLVaNch28fg==
X-Google-Smtp-Source: ABdhPJxhJRxXgIwYjfIZ8HUyLFDhIoKbk0orSRffkmceyffNiCzjG4acjI3uHM1W/9tFIBPDRAZnKjB4jOR3k6nfCfo=
X-Received: by 2002:a4a:956f:: with SMTP id n44mr9708434ooi.54.1625081681837; 
 Wed, 30 Jun 2021 12:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
 <YNIaFnfnZPGVd1t3@codewreck.org>
 <CAJfuBxywD3QrsoGszMnVbF2RYcCF7r3h7sCOg6hK7K60E+4qKA@mail.gmail.com>
 <CAJfuBxw-JUpnENT9zNgTq2wdHqH-77pAjNuthoZYbtiCud4T=g@mail.gmail.com>
 <CAJfuBxxsye593-vWtXz5As0vBCYEMm_R9r+JL=YMuD6fg+QGNA@mail.gmail.com>
 <YNJQBc4dawzwMrhn@codewreck.org>
In-Reply-To: <YNJQBc4dawzwMrhn@codewreck.org>
Date: Wed, 30 Jun 2021 21:34:30 +0200
Message-ID: <CANpmjNPyjTKd7tSPbQ6G75H3djHtWqipmVzNWguPU+mdnH3uag@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -15.8 (---------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.2 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lyg3z-0055yN-K5
Subject: Re: [V9fs-developer] KCSAN BUG report on p9_client_cb /
 p9_client_rpc
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
From: Marco Elver via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Marco Elver <elver@google.com>
Cc: jim.cromie@gmail.com, v9fs-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 22 Jun 2021 at 23:03, Dominique Martinet <asmadeus@codewreck.org> wrote:

> jim.cromie@gmail.com wrote on Tue, Jun 22, 2021 at 02:55:19PM -0600:
> > heres a fuller report - Im seeing some new stuff here.

There are lots of known data races. A non-exhaustive list can be seen
here: https://syzkaller.appspot.com/upstream?manager=ci2-upstream-kcsan-gce

> Thanks, the one two should be the same as p9_client_cb / p9_client_rpc
> and p9_client_cb / p9_virtio_zc_request are very similar, and also the
> same to the first you had, so the patch didn't really work.
>
> I thought after sending it that it probably needs to be tag =
> READ_ONCE(req->tc.tag) instead of just assigning it... Would you mind
> trying that?
>
> > Im running in a vm, using virtme, which uses 9p to share host filesystems
> > since 1st report to you, Ive added --smp 2 to my testing, it seems to
> > have increased reporting
>
> I'm ashamed to say I've just never tried KCSAN... I can give it a try over
> the next few weeks* if that patch + READ_ONCE doesn't cut it

In case it helps, we have this LWN article series:
https://lwn.net/Articles/816850/

Paul McKenney also kindly wrote a summary of some parts of it:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/memory-model/Documentation/access-marking.txt

There are some upcoming changes to KCSAN that can help filter some
data races that aren't too interesting today -- see linux-next and set
CONFIG_KCSAN_PERMISSIVE=y (the opposite of that is
CONFIG_KCSAN_STRICT=y, but not recommended at this time unless you're
writing complex concurrent code).

Thanks,
-- Marco


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
