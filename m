Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A726A132A
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Feb 2023 23:57:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pVKWR-0006fT-Eq;
	Thu, 23 Feb 2023 22:57:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pVKWQ-0006fN-FZ
 for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 22:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JK4KoJKOA0MRPXk3UzYW76AuPHXiyNeI3Df3VB01eWQ=; b=g12QqPmqQkHvAx9y+JUDc5pV47
 TzIAKN1daJrNxG8ol73WqtEHcPvtvOy5V6OFH2mTvTdsRsXndHOyq4/Xt5psw1R98bxUL/TU3ZuNC
 6x06b4zBO1XLyVN5b45EcwQlsTFiPGs6rC6D+ZP1ASLZiZomQa5vSV5KMT8juQuvVrGs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JK4KoJKOA0MRPXk3UzYW76AuPHXiyNeI3Df3VB01eWQ=; b=TDLaFqSGmpZCFp06pLR3qIB2ls
 TS6dfONldxejFn7oPMOhEuP0ygRyXmClJTHcsdlM8L0rIr3+6+XiH7GYeM/NedLsgwfCmfO6LJp/i
 ankBIbM0y0945oTYRrszxzsnZWxx3DNJ4OfvTv9d8PM0dwQTqN00BeNb7c7+TdjbwTlE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pVKWL-00EzI3-Fl for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 22:57:05 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0F204C01D; Thu, 23 Feb 2023 23:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1677193038; bh=JK4KoJKOA0MRPXk3UzYW76AuPHXiyNeI3Df3VB01eWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=4SwmpyiAQgAqXue2kuQ8irOLHrQdYjTdh7l84Yd97h0hp+nZ39chfSENQUR+nUcB6
 2ZGNTByQbRe4EyeyZXDNhDjh1NB9lox+wF1zBjQGLLi07QEnLMJ8Kon8EmB0TfGTkx
 YUJMX7qIcWFfj7yeoVmqMwDWMEpDjyOoCTcYDQXLoar1hT78rkGyvkXWXFwksoGePy
 39FJDbf0oS1C5b8UBE8y32PFksC5z0TSoLl7rUQx/qVEXcGTtUzKDmeH5RvmhCVpH2
 GOWPubHh5oOTrKf1vOXg+89lsLbVDdtbMr9by5dHVhPobau/mUmyRPuzxhogeTU7hv
 xGPtGuMD7Z9PQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 03504C009;
 Thu, 23 Feb 2023 23:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1677193037; bh=JK4KoJKOA0MRPXk3UzYW76AuPHXiyNeI3Df3VB01eWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j2ZgW34zbH8obIz0uTVSpoPmS1KMyBq0kZgZguS2rZaFByP+c6nYOLNLIO5u7z0ob
 1Cyp7QCAj0+xLqJt4KvhiRB1eiiiZa35I2iCm63qLkT11x6XGJemAGJC/IRW9BPNEi
 HrlTZKgWr1mk0QCxeK5pTz8Oh05f2CaT6dxLLufEaJxayyuDXOwkxtR2BAL22yrJuI
 152VeNV1859BndI99EA+rUbOmgd864sSKyM66ufzbvVVTuyZWuq39sQmDC07wr8HEH
 DnUZis6mEURZsqeS3TZiNxO2FFFAm77wPi/cRLXtpgBRacx78ekoRXKzzTBNp90CN2
 /xNiIH2yZenpQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ace3efaf;
 Thu, 23 Feb 2023 22:56:48 +0000 (UTC)
Date: Fri, 24 Feb 2023 07:56:33 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y/fvIbb/XtnSMjOJ@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <Y/CC3qyBFSFVI/S0@codewreck.org>
 <CAFkjPTnVmhJ6Qc7wjgR+QNQ4ma-NmQSW=PKcXkC1FkDZA00stw@mail.gmail.com>
 <Y/fgil/uXLAisE9/@codewreck.org>
 <CAFkjPTnBonY+RsKJ3DcntZtCD4U=8_7ecRORSwaOXk4U9uuNCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTnBonY+RsKJ3DcntZtCD4U=8_7ecRORSwaOXk4U9uuNCQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Thu, Feb 23, 2023 at 04:22:35PM
 -0600: > yeah - so I'm going to move this to move the relevant patches to
 my > ericvh/for-next branch now and we can keep that as the "cano [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pVKWL-00EzI3-Fl
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

Eric Van Hensbergen wrote on Thu, Feb 23, 2023 at 04:22:35PM -0600:
> yeah - so I'm going to move this to move the relevant patches to my
> ericvh/for-next branch now and we can keep that as the "canonical"
> branch for reviewed patches we intend to submit and I'll keep my WIPs
> in ericvh/devel.

Sounds good, I've removed the three patches I had picked up from my
9p-next branch to avoid possible warning bells on next.
(They're still in my 9p-test branch.)

> I think since you are a maintainer, I don't need to
> re-sign off on your patches, but I guess I should review the official
> docs for submitting to Linus -- I'll probably get yelled at
> regardless...

Let's call that guidance, he's been good lately :)

But, yeah, I have no idea really for sign-offs, it's the first time
we're actually working together on a release.. It's probably ok to have
a few rough edges as long as we learn from it.

Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
