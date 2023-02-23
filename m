Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B801E6A0E36
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Feb 2023 17:49:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pVEmO-0003bA-CG;
	Thu, 23 Feb 2023 16:49:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pVEmE-0003ap-PR
 for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 16:49:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/FJxqS6CA2MCRFMA6K3s48HrHnEePWOPS+VWKuXJzP0=; b=hOJW8UWVjovpTkq33qr/dPRIff
 RsXSHQLK/1v1xlQHUUX+JhvQ31ewC2cF6qBoEVpj/j6ACGKpl0U1g8pYKHHPCBOJKRYqJQpJfZOYn
 itRpgLrhcApHf2LmlpmGiAACYNks/pu92XRkq9Yy0Kn29QK/Qa01BFRqP/PHtN1VXmFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/FJxqS6CA2MCRFMA6K3s48HrHnEePWOPS+VWKuXJzP0=; b=NW4A0I34556jjbCayPiJU1FtlC
 RT9mawA5At2Cm3ritMZpujo7N+NGGmPwULyBo2Qp0A3DFplGi/lZEyJghKVFfOPZPYmd7/xJlES9t
 pHXlmFTukGDWkV9Dd8KwJLc8OSbLxEGFVw+MyP7BbLV8N0+5d78ZbnZl67KudlDrSexQ=;
Received: from mail-wm1-f53.google.com ([209.85.128.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pVEmC-00EkK1-7M for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 16:49:01 +0000
Received: by mail-wm1-f53.google.com with SMTP id
 p18-20020a05600c359200b003dc57ea0dfeso11245429wmq.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 23 Feb 2023 08:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/FJxqS6CA2MCRFMA6K3s48HrHnEePWOPS+VWKuXJzP0=;
 b=DmopS8NneLImQDoH8/wblnI5oyPtk7//Ue8s/LCMYQyDrV9KDNqk7MauhCttWRIMcT
 0Q2mrgERmB+tzYc55tn+U11ZDGLQlsUrt5ESwYQBBs/xJaVT/iKXpXk2+jB0M7l3uam9
 eFU2uUxI1HQ+JbxzkioM+uuFHY5ZvMgGltdeWMlAa4P3sG/N/nXoZxSExpbp5QntoWFL
 xMFWj/HJq+zwcEAVfkxkg/bcTwctyAlalXPnBwnoHVqyaR1//UR2csjDQaS9Oe1sge5h
 lPhszJVoqMpRe4L6CH/YblrlJhFOdClWCrSYk5fm41gn/ZIg3V8gSOCrNmBN/6qS9bDr
 IsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/FJxqS6CA2MCRFMA6K3s48HrHnEePWOPS+VWKuXJzP0=;
 b=SnY7O16w7u+3AtsXIYsoxXsYtAB0K6862O1e4y0VsSSqlZUpHPnkCki9Bvtj5mXVC/
 bCtmHQ4y42z3JYuJ8iV3p51mD126UL9JGQax+x7FEGPNNkXaTBKqftdhYlJNdEmkilyM
 iMI5YhGZHizm94yH5Jpv7inHmhn2iEcM0QEUlHZl18mmaI4aAhKopR3RT5E93Yi8FYyZ
 AjbsDJFrO5l78x6MHWWujSPVJ9QI2iDwGLIWLBZwO9X6YeRoH46YUCmOrxvJzXEV+b31
 mxqo5qCcg+bgGlr11JCsB8QjafYX7mpQ63jyu2+gQ2iSqPcsu9nm5nsaUUQgBCI7CLS3
 tc7Q==
X-Gm-Message-State: AO0yUKVSws5EwW4QH+cLzCDlF5gQEz6dwvG5YI6h4vrcfXHizTz9AQIu
 ISX8h20FrJ79D6uPcdYL1TyoA3LqTer03Ix0agVt3jT0
X-Google-Smtp-Source: AK7set+Cbc0vLVFiMAlp7/HKvnUnG4JpWkYEfKwCBmoIC9WOWeCOhafJVIgjuJgEOBLY3oYPaDYi91rJRhO7MYMfA2E=
X-Received: by 2002:a05:600c:3acf:b0:3e2:db9:6fa1 with SMTP id
 d15-20020a05600c3acf00b003e20db96fa1mr847577wms.29.1677170933419; Thu, 23 Feb
 2023 08:48:53 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <Y/CC3qyBFSFVI/S0@codewreck.org>
In-Reply-To: <Y/CC3qyBFSFVI/S0@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Thu, 23 Feb 2023 10:48:42 -0600
Message-ID: <CAFkjPTnVmhJ6Qc7wjgR+QNQ4ma-NmQSW=PKcXkC1FkDZA00stw@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  just as an update, I've been working through the comments
 and have a private branch with some changes for review, but I'm conscious
 of running up against the merge window so I think I'm going to submi [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.53 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.53 listed in wl.mailspike.net]
X-Headers-End: 1pVEmC-00EkK1-7M
Subject: Re: [V9fs-developer] [PATCH v4 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

just as an update, I've been working through the comments and have a
private branch with some changes for review, but I'm conscious of
running up against the merge window so I think I'm going to submit a
subset which were signed off along with the 9p-next ones
today/tonight.  The branch is already published to github/kernel.org
as for-linus-6.3 -- someone double check me and make sure that all
looks sensible.  It passed all my tests a couple days ago, I was just
optimistically trying to fix the others up, but I think I'd rather go
safe than sorry.

        -eric

On Sat, Feb 18, 2023 at 1:49 AM <asmadeus@codewreck.org> wrote:
>
> Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:12AM +0000:
> > I'm gonna definitely submit the first couple patches as they are
> > fairly harmless - but would like to submit the whole series to the
> > upcoming merge window.
>
> Could you take the three patches I have in my 9p-next branch:
> https://github.com/martinetd/linux/commits/9p-next
>
> If you're going to submit some?
> The async stuff still isn't good, but there three patches have had
> reviews and should be good to go.
>
> (I guess we can just send Linus two pull requests for 9p, but it doesn't
> really make sense given the low number of patches)
>
> > Would appreciate reviews.
>
> Just one first review on the form: let's start a new thread for every
> new revision of the patchset.
>
> I also used to relink from the pervious cover letter and thought that
> made more sense at the time, but I was told to split threads a while ago
> and now I'm trying some new tools based on lkml.kernel.org's public
> inbox thread view I can agree it's much simpler to grab a batch of patch
> if older versions aren't mixed in the thread.
> (For the curious, I'm just grabbing the thread to review on an e-ink
> reader for my eyes, but there's also b4 that I've been meaning to try at
> some point -- https://b4.docs.kernel.org/en/latest/ -- that will likely
> work the same)
>
> Anyway, off to look at patches a bit.
>
> --
> Dominiquee


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
