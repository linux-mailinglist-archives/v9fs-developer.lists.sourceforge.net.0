Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3EA49EE01
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 23:18:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nDD5c-0001Xo-Aj; Thu, 27 Jan 2022 22:17:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lionkov@gmail.com>) id 1nDD5a-0001Xg-LO
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 22:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E6iH7Hd3X2LAK4MVWxV7+Eni1MfcoaBPiMBARQ4rwRY=; b=gjgh/z0SEkk/33BPqbkwGKHwnR
 /7pFwkvlyi59ta0S0qKsAmR1+iUtjE6fkyKxTblEFhYayB/UUDXzpUa2kMQEf2uMxGX7o8cgtCKeF
 zEygqVcklN/0ErO5PpwdMM1wsRC561yNW62wK9A7J/PTjpDerKiB4IE7wA+pSD82XHWo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E6iH7Hd3X2LAK4MVWxV7+Eni1MfcoaBPiMBARQ4rwRY=; b=NkFXk34zpb81FrRB/FMo4vdfrS
 zjOFl8NXyUy0fmLmKOWj6q5Hcobd3TKLQ072e7Wxq7Uoo6Ko8KmxA0+j/zDGxQnbBA3sx9HQPqFw7
 pHUIm3lLklQuAHxBkmMiZUiR1iQ8doN+PFGGHzNFj1D9JieKtXeMe41Vtbs4AZ/kJqok=;
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nDD5Y-00063V-62
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 22:17:56 +0000
Received: by mail-wm1-f51.google.com with SMTP id
 n12-20020a05600c3b8c00b0034eb13edb8eso3918794wms.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 27 Jan 2022 14:17:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E6iH7Hd3X2LAK4MVWxV7+Eni1MfcoaBPiMBARQ4rwRY=;
 b=Aj/qL1jeZQkeTEkOCsMXz78t94cfJ36L0kgrTek+1SFsQ4xOwk+sBvAr17AdfI2ZZd
 d4SlQ6BI1TDz48Y/bml9NxZh+Btr24l8PITHBYxxKYVs6//SXdriLo9I7JegKxhjpwHI
 caE/JS8/dNsxY3Bueppz3vbt4w+Bu0j21D61RBlhsGO+AmnPPYMIgzaLkMdUlHL7Isei
 dBiYuAndtvW+mOFVcsA5ycsfP7QQs67GHRbcAawr5L5AWl21ZTdIdvMwFnFRDheNni96
 2COffo9ygPI8QBnXsjnJ/Og2bCvrfiR8go0BbGJVxIlScOEr1sDzBKOnHIqxnx0c81Uf
 4RqQ==
X-Gm-Message-State: AOAM532RM6JpxRaBEyBPGf095nQOvO5gsf9hiH29vAcHNIYEG4RtB190
 k0a5a87Nzebh3UqkENPZREIWfdjqr1jUaQKULwWgkITf
X-Google-Smtp-Source: ABdhPJyyW4B9yySdpOm4psyQ78UpUWVi14mKi1VSttmiMC+XcfzzlKVxNRLy1Th36zSp25T4XPAqjr40GR5/k2FXK60=
X-Received: by 2002:a05:600c:5027:: with SMTP id
 n39mr4868058wmr.14.1643321869628; 
 Thu, 27 Jan 2022 14:17:49 -0800 (PST)
MIME-Version: 1.0
References: <CAFkjPTne8PxxAd=gQ-LYYkRmwz+uhbqYtNzZiTkvL8ANHyZMbA@mail.gmail.com>
 <CAP6exYKZqJpfR+Tr3CwJrNE2Pzd-Fd2gYYW_P+he=ZStbBMHUA@mail.gmail.com>
 <YfIuBlKzYasIhtxf@codewreck.org>
 <CAOha14wmd61e0GbBY9Dsb7R=dcEmnVvvZe2R-n99iY2hOd9+NA@mail.gmail.com>
 <YfMXVNBqapNHFzAd@codewreck.org>
In-Reply-To: <YfMXVNBqapNHFzAd@codewreck.org>
From: Latchesar Ionkov <lucho@ionkov.net>
Date: Thu, 27 Jan 2022 15:17:38 -0700
Message-ID: <CAOha14xug6EWxtVp4HbGMNugNkq_Dwu0-q1QnR5v7mi+UECfUA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  At some point of v9fs life the open fids were kept in only
 in the filps, while the unopened fids were kept in the inodes where they
 can be easily reached. I don't know why that was changed at all. You [...]
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lionkov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.51 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nDD5Y-00063V-62
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, ron minnich <rminnich@gmail.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

At some point of v9fs life the open fids were kept in only in the
filps, while the unopened fids were kept in the inodes where they can
be easily reached. I don't know why that was changed at all. You can
get unopen fid from the file through the inode, but there is no way to
confuse which fids are open and which are not. What is the use case
for having opened fids outside the filps?

Thanks,
    Lucho

On Thu, Jan 27, 2022 at 3:06 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Latchesar Ionkov wrote on Thu, Jan 27, 2022 at 01:13:07PM -0700:
> > I have no idea why opened fids should be kept in the list, but if you
> > do, you should also make sure you keep the mode they were opened too
> > and don't return the ones that you shouldn't be returned in that
> > particular case.
>
> Greg's commit message seems to say this is about using an open fid when
> doing an operation on an already open fd, e.g. ftruncate() would not use
> the "correct" fid.
>
> open files should have a fid in filp->private_data but when we reach the
> setattr function (e.g. v9fs_vfs_setattr_dotl) the filp is nowhere to be
> found, which means we need a new lookup -- and incidentaly we don't know
> either if the fd the operation was meant for was open as RO or RW.
>
>
> Looking at do_truncate again specifically now, it looks like that when a
> truncate was invoked through ftruncate newattrs.ia_file will be set with
> newattrs.ia_valid |= ATTR_FILE . . . so we actually can get the correct
> file and I think we can just revert Greg's patch, which will avoid this
> whole mess and fix the issue... And we actually already do since
> 66246641609b ("9p: retrieve fid from file when file instance exist.")
> (which came a bit later to fix another problem with wrong fid being
> used)...
>
>
> So just reverting Greg's patch should work for all use cases and will
> spare the problem of looking for the right flags.
>
>
> I still want to take time to test for regressions, so will only send the
> revert patch tomorrow, but if it works we can just use lookup for
> non-open fids as we used to do and everyone should be happy.
>
>
> Greg -- if you have time for tests as well I'd appreciate it, as you
> originally had found that problem :)
> (well, commit message has a reproducer so I'll at least try that)
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
