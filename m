Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F7F21FFC0
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jul 2020 23:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7B39us3bpCgIk3BOpPw4iuN+6GAbgrylB7614XzKph0=; b=PjBwOPlyVAbYx4mXq3mVeWM4Yl
	R1thMSLTDtPmQS4rYkrNl906+hZPyrGxeZQrMJDJ8DBEuXSMDyGLZy7WiaOUz+tqj3kM2x6WtlnxZ
	AJX0eW7Kfujm3h7bmf47eYZBj5CO73j/lE50YD6QAZ8XyfwxmusM6Ol18aoOr5ASfhfM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvSEN-0006zd-Az; Tue, 14 Jul 2020 21:12:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <victorhsieh@google.com>) id 1jvSC7-0006u0-VH
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 21:10:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tf9PAf4+scrz48zRc1kpOyACTjUnABDU7s5fr84q2Xs=; b=TsVbJ2/w5s8GXOXs6D4y87Txy3
 /KbGuuJO4Iv8b4VlAG+f7yfHzVAHZ27SVnZjhbrbBNodffTlXhyvAMUDQ6eaFLth+BuXXVSAWkqQt
 jouEBSwPtWSJTFcvbZeAmm58OS+GY5WE64K0dfO0+NRCXObOmqoVOAk4n350J8znclxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tf9PAf4+scrz48zRc1kpOyACTjUnABDU7s5fr84q2Xs=; b=P7JjZ086ZGVDQocw+0SAAkuimS
 UlSemFdVxeb/y3hnVkQcAcYBi/jTOc7+ovEB9LD0Ojxo6zmrwiarS5Mv7r/5HaWrtwQgFy8/cTv1M
 eLaZGMKnG1FMvoy2Iz2l7vFn1h0y/zgWGOtrJQ6uWpp5MfMV9vV1bThnWsODVA5JepjQ=;
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jvSC6-000OSy-NS
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 21:10:31 +0000
Received: by mail-io1-f65.google.com with SMTP id e64so18848580iof.12
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Jul 2020 14:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tf9PAf4+scrz48zRc1kpOyACTjUnABDU7s5fr84q2Xs=;
 b=cpWNBhufuFQNDA2gpemEkyku+gKrlNiQt3MhwI1Eugw/Bx6Y0AYdA21C8z0JAUNfHb
 9js0LLzYMMUrX76NM3O+OIdWsFtaDqEimtbf2jPZmG45ku17m5JsSioQvJzpgAvqhPvs
 n4QCFMP3DwDh/tkETDRDxy4mhoouYJCJcKvXlsY1v25wvGr6/WN9Kxetf6ApX2A0Ret+
 sp3n5A7pP65mjvAbQo2k/XC0KVZdWM5qeKjmfm/Un78MHqsfxgyIf82nxRgtqNAq8NkE
 1EfxMyhngVhXWdkjHy8gHjgkBGEiclN7ZDujnXYZzyOWOrLrQJD3AbtTwvWop8cg0641
 h9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tf9PAf4+scrz48zRc1kpOyACTjUnABDU7s5fr84q2Xs=;
 b=iTJnMYjL3iRiijU4zdKOWlfaIKrKDe80BVKfHxrCQX9XCeztZGWPJVaOLhDDMhLJsv
 Uttq3f+OeGzJvR/fHPy6yFkwvQWW8oHbRTBol8JS4uf/VczW2in8a+M3MUX2LLsn012P
 ht+e/hDCbt7wrbBM5y5h28+fv5zRdmyCRPq2KpDrPgDJ1vmsKDW75+45DRzZ2QB7EfDG
 2d9RxMl9FQ0C+JOwQJB19Pj1GG7M87+MckBV+2cDsyseKRBZki68a9xfJsXvcaQlo4GG
 /w8Do/EwLVyA11KwIjt5+BjpJ9bDJgto0rqv1ZtgvlvHOy1lgyEh1zcKrN0RWtaAAHUo
 SYKw==
X-Gm-Message-State: AOAM5329jtV5BPzFOcABbDcFIw+PBCLhO82W4VoTP9BVEjRa7QhLuv48
 e+ijsoC9R0kBnc2DtoKXHCHDIuj+TLuuxwqdeDqzqg==
X-Google-Smtp-Source: ABdhPJzMjt9SabBaf1o//577oui3GOmtQID23iPxyM0BvroWjYHuwu82cadQM1D4S+NKjseqAU1eQd+4NuDPbMB8/UM=
X-Received: by 2002:a6b:5b0e:: with SMTP id v14mr6876818ioh.145.1594761024680; 
 Tue, 14 Jul 2020 14:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200713215759.3701482-1-victorhsieh@google.com>
 <20200714121249.GA21928@nautica> <20200714205401.GE1064009@gmail.com>
In-Reply-To: <20200714205401.GE1064009@gmail.com>
Date: Tue, 14 Jul 2020 14:10:11 -0700
Message-ID: <CAFCauYPo_3ztwbbexEJvdfDFCZgiake1L32cTc_Y_p4bDLr7zg@mail.gmail.com>
To: Eric Biggers <ebiggers@kernel.org>
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.65 listed in list.dnswl.org]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvSC6-000OSy-NS
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Fix TCREATE's fid in protocol
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
From: Victor Hsieh via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Victor Hsieh <victorhsieh@google.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Please disregard this patch.  I misunderstood the protocol and have
found the actual problem in the hypervisor's 9P implementation.  Sorry
about the noise.

On Tue, Jul 14, 2020 at 1:54 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Tue, Jul 14, 2020 at 02:12:49PM +0200, Dominique Martinet wrote:
> >
> > > Fixes: 5643135a2846 ("fs/9p: This patch implements TLCREATE for 9p2000.L protocol.")
> > > Signed-off-by: Victor Hsieh <victorhsieh@google.com>
> > > Cc: stable@vger.kernel.org
> >
> > (afaiu it is normally frowned upon for developers to add this cc (I can
> > understand stable@ not wanting spam discussing issues left and right
> > before maintainers agreed on them!) ; I can add it to the commit itself
> > if requested but they normally pick most such fixes pretty nicely for
> > backport anyway; I see most 9p patches backported as long as the patch
> > applies cleanly which is pretty much all the time.
> > Please let me know if I understood that incorrectly)
> >
>
> Some people assume this, but the stable maintainers themselves say that Cc'ing
> stable@vger.kernel.org on in-development patches is fine:
> https://lkml.kernel.org/r/20200423184219.GA80650@kroah.com
>
> And doing so is pretty much inevitable, since the tag gets picked up by
> 'git send-email'.  (Yes, there's also "stable@kernel.org", but it's not actually
> what is documented.)
>
> - Eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
