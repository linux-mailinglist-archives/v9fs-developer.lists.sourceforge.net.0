Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EFC1047E8
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Nov 2019 02:15:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iXb3s-0008RP-Gy; Thu, 21 Nov 2019 01:15:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <krzk@kernel.org>) id 1iXb3r-0008RH-0A
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Nov 2019 01:15:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pEXuvt/GjVbS2Ap0C9bv3F3v2cU7PFJdu5vh0vY5qq4=; b=ju7LJunX8KSpavPp4prb6cSnSs
 5QCIARXqXQqENrpVJ7irQN1Qi7WXth+S4CxrqWz9/wBgAPKs/Po0F3T+TcK/u4yQbdm+l3jVSHM4Y
 cu8nHKjQn36svKdkQ3uxYdt8REK7jZ2Omi8yY9Vn9S7S8swcxVZcYQlqesd4GDLNBOC4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pEXuvt/GjVbS2Ap0C9bv3F3v2cU7PFJdu5vh0vY5qq4=; b=RuhYnqGG9mUY78aFqVEsE/NkiW
 tFtxvoJvS/hS7LnRGCs0WyG6GeQLBzFC/QuMcl/XZlmqOOMOFvWCSNhfchMD/fPihyI+2hEPnfN/P
 qQZRr7eaEPf4tv3xCjGFv//z31Q3H2IeBXangSt2a9AVsKaFZz1loXveyTpZx3PnD8f0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXb3o-007mBg-UK
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Nov 2019 01:15:06 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFBFA20895
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 21 Nov 2019 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574298894;
 bh=0YhXESY5Img+bDLyS0DkVrNjXOfbzeStiFQlNIzzGZ4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=k99Px07GTebnY/clhcdtK17Zbz+hNnISxxCkaD6jDrti+6IBgP55V0GRWpqg0YAB7
 F171w1KIxZ0jicpzxrheN42/RizH/RNZmdhTIjHg30WL2fe/SMmZ3wWVXSoAHyv6xB
 kbguBgjgLrKbLIvHCviuRLp9yCf3Y0z1+hraHonI=
Received: by mail-lf1-f52.google.com with SMTP id a17so1099212lfi.13
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 20 Nov 2019 17:14:53 -0800 (PST)
X-Gm-Message-State: APjAAAU58m2v0tac/urItSWx7gZLitECd8u99+3bHVbNcZPbDw0iHA6S
 OaU414dbFEJ2MCB74D7Ohfp/j60rv1VR1nowP2Y=
X-Google-Smtp-Source: APXvYqwxOI7j8UNtoDwJ2RlML55Fi33YOEKFeEzv23JmFFyiMCSjUpIN4ZQ4V6gEDr4+LM9PWjmNk7O/L7gtOhnP5Kk=
X-Received: by 2002:ac2:5228:: with SMTP id i8mr5106648lfl.69.1574298892107;
 Wed, 20 Nov 2019 17:14:52 -0800 (PST)
MIME-Version: 1.0
References: <20191120134340.16770-1-krzk@kernel.org>
 <20191120140146.GA21065@nautica>
In-Reply-To: <20191120140146.GA21065@nautica>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 21 Nov 2019 09:14:40 +0800
X-Gmail-Original-Message-ID: <CAJKOXPeGm=2_p8SWwgUbf-hTDyi91PhtvPzTL_ZxkM9ADg1dNA@mail.gmail.com>
Message-ID: <CAJKOXPeGm=2_p8SWwgUbf-hTDyi91PhtvPzTL_ZxkM9ADg1dNA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXb3o-007mBg-UK
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix Kconfig indentation
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 20 Nov 2019 at 22:08, Dominique Martinet <asmadeus@codewreck.org> wrote:
>
> Krzysztof Kozlowski wrote on Wed, Nov 20, 2019:
> > Adjust indentation from spaces to tab (+optional two spaces) as in
> > coding style with command like:
> >       $ sed -e 's/^        /\t/' -i */Kconfig
>
> I take it janitors weren't interested in these?
>
> Since it's just 9p I can take it, but if this is the only patch I get it
> might take a couple of months to get in.
> Will do depending on your answer.

Neither trivial nor kernel-janitors picked up previous version so
let's feel free to take, even if it sits in your tree for some time.

Best regards,
Krzysztof


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
