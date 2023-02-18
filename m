Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D277869BBDC
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 21:31:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTTrI-0005rb-VY;
	Sat, 18 Feb 2023 20:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTTrH-0005rU-KW
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 20:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QadmvTLU3p7JOh7xxAC87K0Sg4e9FWFDYpVVA2/g8Wc=; b=gj6fLm0orO4irXEkFYKrBtXgAU
 qbyGYm2/pY4HCMkkazTVy2wyoMswyzMxtydKYOA/wQRdq3ASq1yVeVoa1bsSKmUUbVS7BRsXwZgCM
 TVR5LIdGvFUfFvoXlJGViqZ3H2mb0QJR4cv6snhdVsh4LT8Z1cwJftAnOIo0bGX2VyqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QadmvTLU3p7JOh7xxAC87K0Sg4e9FWFDYpVVA2/g8Wc=; b=QPXj1Cu8xoc+9bbjD08IGt6lqy
 GsmarqlQI8MBv7ISsdZ2XsbwRhxaKJ9fhq9MRZmCok86jDWZ/GlMk1P/23/JAd8KiShKRBO2NyAL2
 iCtBM/WlZGiFKW0G8uUyj673uEFX6RgJQfMGqsEGMUukDgv0+T5xODvWWwFLRUoguAD8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTTrG-0093gm-QK for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 20:30:59 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 6CD5EC01D; Sat, 18 Feb 2023 21:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676752276; bh=QadmvTLU3p7JOh7xxAC87K0Sg4e9FWFDYpVVA2/g8Wc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PE2pVytWtKc1Th+ESPKMPRo74U/rELp4CvbtYzaIozYZAJcnaF8aM23/KMqCPJGOq
 rvwid6AcI9H8I00NdaTbZwISZv6giZ7gYsi/lzsBpG76xGgxHjWM/6VY7FJJRiL5sg
 BSeInbfPyy7a+hV5oIqIxi9aK/RnSPWZ77KTcrtSdpv0ak8PHuZyA2imGKzNGnsJGL
 Cx+Wu3sMLgjAFgUx84ZfcTtwReJdoqPprwD+eRazHC8wr2nRXBeAOCd+gOS5WqtYeG
 adO1G0PEF1eRhvLj7FKS5b7K/Ffmre1GTOhncBQzbvshVXHigl5SyyQLMFhjAafg+w
 HiokfuTxvCtZg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7AE56C009;
 Sat, 18 Feb 2023 21:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676752275; bh=QadmvTLU3p7JOh7xxAC87K0Sg4e9FWFDYpVVA2/g8Wc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=obW/Wnv+FxbzyuW3FxZ5pKxtPWkJfWQZxT95elJwJecIdaWpIqrQ3KC4bCM3pqIrX
 24puNPh+wYA2CheNiu5dQdlshPRX/HUadH++EdDQpWR4OojpmAc042t6+09yaK9IB4
 5PyoqzT1wXTqxVOJZurWuo2DaG7eHi7tnbnvU6Nt4AJeKzWkmTRiJkFZ+b0y4gr22E
 X3PAcm60xDXqciCvZQz+i1LOv7fE95e490NfAFx6218bzfbNQ2jnchoKd1a5Pw4W/8
 0foPJf7cnDlI55283YzmdOIjCxVnx+Y3o0YsnQ+W2WA0y08gyLkp9qHOBmgPzLQRBD
 9WQiA0mn3AoUw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a9e515da;
 Sat, 18 Feb 2023 20:30:47 +0000 (UTC)
Date: Sun, 19 Feb 2023 05:30:31 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y/E1Z0sdaS06GMaN@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-5-ericvh@kernel.org>
 <Y/CbhQVeO8/pxrBE@codewreck.org>
 <CAFkjPTmBs10YAPrXYx3hQHvVu0P3+_fJ+_eZ+9z6h7csSqRYbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTmBs10YAPrXYx3hQHvVu0P3+_fJ+_eZ+9z6h7csSqRYbw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 10:24:17AM
 -0600: > That's fair -- and it didn't seem to hurt anything to have DIRSYNC
 at > the moment, so I can drop this patch if we think its too m [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTTrG-0093gm-QK
Subject: Re: [V9fs-developer] [PATCH v4 04/11] fs/9p: Remove unnecessary
 superblock flags
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 10:24:17AM -0600:
> That's fair -- and it didn't seem to hurt anything to have DIRSYNC at
> the moment, so I can drop this patch if we think its too much noise.
> I guess it was more of a reaction the filesystem implicitly setting
> mount flags which might override whatever the user intended.  FWIW
> SB_SYNCHRONOUS did seem to have an effect on behavior (although I
> didn't specifically track down where) -- I noticed this because the
> problems Christian found seemed to go away if I mounted the filesystem
> with sync (which basically ended up overriding aspects of the cache
> configuration I guess).

I guess it doesn't hurt either way; happy to keep this patch in doubt.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
