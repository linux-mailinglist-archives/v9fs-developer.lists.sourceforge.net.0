Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2595202A43
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jun 2020 13:19:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jmy0v-0004hl-Lj; Sun, 21 Jun 2020 11:19:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jmy0u-0004hX-5i
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 11:19:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=suTt0pS+l/ysHThYP3Io+1qHv2Z1U36c1O0c2IABO4g=; b=KkTRh24uNTnQT3tbXbRHy3GK1d
 U26THYGOlMB3Alx0v6gSUWRqGjN0pnZj/igC9I/X69clzNPK2aysk/oXsWt/NbXUnSMhmhzQSodM8
 f5KGxYA9LncrTTbdZFu0L28JDxUd5z1q1tWwb7VHoMN4GDO5I17Lj5kbGlCzqoImnay4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=suTt0pS+l/ysHThYP3Io+1qHv2Z1U36c1O0c2IABO4g=; b=NtzOkvOC5WlI5l264DRNZIDFe2
 UHUXIGiXR+myRAO68iDC2E9hHzP9Orec/IzCm+1AXsbvZ+J7WnLL0JAidszGLvJPI58wn9J8uyaQY
 nq4miuAwMDxR9PGCL0f1BpgpjI+M+3uGdSnPdiiBEx4YQ2Ds6b/aFwkpSd2TqrlHUjBw=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jmy0s-00DvI0-01
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 11:19:52 +0000
Received: by mail-io1-f67.google.com with SMTP id u13so16351195iol.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 21 Jun 2020 04:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=suTt0pS+l/ysHThYP3Io+1qHv2Z1U36c1O0c2IABO4g=;
 b=VvgZXG3lHfi+DkyCn2tooxxccvdrGVA/0xdHILF/nGY+oCrZG39AT/DCqdGnWlScdG
 dIndfQpyOaJGhuiKl45InjW9VFoNue6unWwxUHrER/iSRtZ1MMH8pnO1dd1GMBzVpko9
 GWJ6cvASrkBXAcJna/GOwtERv8m5BgDOWA6jX8pXIQqhGjSg/Gt9/f6hmXi/K2lK9GWf
 OXTB9Gc4CdGMQxSvSALp7tCQJwvqvCN4PJF/PMxf1DZdZO4ICvuS2j3JlvLrRptXbgmE
 vrY5GgRkF13JhkHZou9NvqLVp/05hSOYUTZcbf7bO80VXj2qhfg5jGppbbAne16Bx5Lj
 HcqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=suTt0pS+l/ysHThYP3Io+1qHv2Z1U36c1O0c2IABO4g=;
 b=UtQU/bjgotPF+zrH/H/ZMJMSXSsd9hKErV4JNVeKAjBgRocVLJSQJgxNmXGv5NvzRy
 clAZ5sNGjCuTK8zjGr/IX5ngUPUTfEgA1aYNjkiBfbdWCPJYQ8dFUKrgSVs/8GgJlp8G
 dtC66Z73aNl2mhMeuKGBTeP5YPHJ4p+bLa7+hChKabDsSMUXbeTfsHInaA6txNLoX9fC
 LLTHW8gACxMPCClh2JsePecoWYjQjTlHdzgTUUInBC+d55Su9aaFFnpijSv1jIPpeLdJ
 PYHyu3Un49Zx4G+Gx7Y4Nsrns6WG+8u6AxlYAA/XfIkiFKxRSmJQz8NT0TI6dl38+mkZ
 E10Q==
X-Gm-Message-State: AOAM532MZpPFYMsfvq8NynVYEi6x/NVvsTsUojMW+tUi9JWilfIRoSOM
 R7E6EKE7pvRj7SuDCyouMaovxdrvI8whM0Y/JYQ=
X-Google-Smtp-Source: ABdhPJwk2TL8Y73HRouNrfYM3rnZ6QtfQz9eowB6OyBY1KBXFqE7GIYQ7KtS3mUJ9kC/GaD51ebRPe4FWY2mcTK6eMA=
X-Received: by 2002:a6b:740a:: with SMTP id s10mr13450032iog.107.1592738384231; 
 Sun, 21 Jun 2020 04:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200618190807.GA20699@nautica>
 <20200620201456.14304-1-alexander.kapshuk@gmail.com>
 <20200621084512.GA720@nautica>
 <CAJ1xhMWe6qN9RcpmTkJVRkCs+5F=_JtdwsYuFfM7ZckwEkubhA@mail.gmail.com>
 <20200621105645.GA21909@nautica>
In-Reply-To: <20200621105645.GA21909@nautica>
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Date: Sun, 21 Jun 2020 14:19:07 +0300
Message-ID: <CAJ1xhMVnvbX543YxNSTMgjTM1afcHvF98_wd8G1LQ0mDemgo3A@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jmy0s-00DvI0-01
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

On Sun, Jun 21, 2020 at 1:57 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Alexander Kapshuk wrote on Sun, Jun 21, 2020:
> > Thanks for your feedback.
> > Shall I simply resend the v2 patch with the commit message reworded as
> > you suggested, or should I make it a v3 patch instead?
>
> Yes please resend the same commit reworded. v2 or v3 doesn't matter
> much, the [PATCH whatever] part of the mail isn't included in the commit
> message; I don't receive so much patches to be fussy about that :)
>
Understood. Thanks. :)


> > One other thing I wanted to clarify is I got a message from kernel
> > test robot <lkp@intel.com>,
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/thread/TMTLPYU6A522JH2VCN3PNZVAP6EE5MDF/,
> > saying that on parisc my patch resulted in __lock_task_sighand being
> > undefined during modpost'ing.
> > I've noticed similar messages about other people's patches on the
> > linux-kernel mailing list with the responses stating that the issue
> > was at the compilation site rather than with the patch itself.
> > As far as I understand, that is the case with my patch also. So no
> > further action on that is required of me, is it?
>
> Thanks, I hadn't noticed this mail -- unfortunately I don't have
> anything setup to test pa risc, but __lock_task_sighand is defined in
> kernel/signal.c which is unconditionally compiled so shouldn't have
> anything to do with arch-specific failures, so I will run into the same
> problem when I test this.
>
> From just looking at the code, it looks like a real problem to me -
> __lock_task_sighand is never passed to EXPORT_SYMBOL so when building 9p
> as a module we cannot use the function. Only exported symbols can be
> called from code that can be built as modules.
>
> That looks like an oversight to me more than something on purpose, but
> it does mean I cannot take the patch right now -- we need to first get
> the symbol exported before we can use it in 9p.
>
>
> As things stand I'd rather have this patch wait one cycle for this than
> revert to manipulating rcu directly like you did first -- if you're up
> for it you can send a patch to get it exported first and I'll pick this
> patch up next cycle, or I can take care of that too if you don't want to
> bother.
>
> Letting you tell me which you prefer,
> --
> Dominique

I am willing to send in a patch to have the missing symbol exported as
well as resend my previous one with the commit message reworded.
Thanks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
