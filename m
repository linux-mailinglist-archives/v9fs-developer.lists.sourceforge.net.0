Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C162F2CE1BB
	for <lists+v9fs-developer@lfdr.de>; Thu,  3 Dec 2020 23:35:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kkxC2-0005Gj-Eh; Thu, 03 Dec 2020 22:35:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1kkxC1-0005GW-Dy
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 22:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cPqbqnUEnkWeeVcA9Ivg1ZBfhCxd+q6cSwKDsuSVW9Q=; b=RuZmzFXd7+KnBQi3kPbgQsrqYI
 Fdc6vjoaob+YCqNG25FISmNi5OzLUosPSUureZ4NO7kxlgrvTpj7tKjbuDQPvsnTCLH8pi/xseNVd
 XQgrzmZSLLGviqsH5ZHbTJgyXyQad4eZZuvtVsHZrsbI+j6FRqGu8NK2MUwNwuAjtpKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cPqbqnUEnkWeeVcA9Ivg1ZBfhCxd+q6cSwKDsuSVW9Q=; b=R7NeBXyZopnSCPakiLr+Y0XiYa
 QE3pS6lIOpGesMTa5YkHXKR+en5KqDM+kEVJn82hTwdVJCb/Vfcidg+HS1RDcY/Ey+kLtR/GU9N2S
 rOuajXYLi5E5Y/ooNk9mXalKVlAT32Pjdtb0LSqpurDn9qmiFPSRPKku3mBW7tDMovyI=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kkxBu-000onj-0E
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 22:35:17 +0000
Received: by mail-lj1-f194.google.com with SMTP id j10so4360630lja.5
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 03 Dec 2020 14:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cPqbqnUEnkWeeVcA9Ivg1ZBfhCxd+q6cSwKDsuSVW9Q=;
 b=hDZqi3hqZVw3Nx0Hn7CoAuER/OvORTezXtXnvgKV3ER4hLO95kr/ajwbehZnQKcFso
 GolO5HCPno+0xCM7TGbrnl4nDmpzCLgx7kYqpQy3dLb+Zk+nHPQ27OR6SVI+z8Zpe3Es
 MtGNPftm3EuKFMR8SQbJkIq457Fj3zS/BG8CI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cPqbqnUEnkWeeVcA9Ivg1ZBfhCxd+q6cSwKDsuSVW9Q=;
 b=JpjPkF48NwqnkK9br0hWKChQFVGGXjjaCrS8FOaJm00dkZWXOsoVsbi23nrDvx6DC4
 JL/9iH7KRosdjhHa0PXxTpt3DmEK37fN1vzR48I/B81w09u5i9P1P6T6jK5zW2WGpKdj
 NgvHItZ0kGVGqeQg5HSDe2ZBOHDPL+oVp6no45tOBcAXjTfS3ZCGV5ZvXyMLl/8Agppy
 s9DcWw+2j/cFhqUK3F70nZQQb357D7LxjSW4NTztRMdZ/+T3pURaGXuCdN8XOkoQ6kHD
 MhPJ4NJzWZg/U3Jg2GN2ikftzNfB6EPk51Oi08ZJ7NrddoCVIheFiRiLL7RUdtNgghno
 OaHg==
X-Gm-Message-State: AOAM5321vUfQd0a+Vk6RgVspgsoGjzkhK++LtqlHyzA0bTTHvZmuhB2X
 Qed/xajQ+r1dZYFrTNgxMz/HKPbjNJ72oQ==
X-Google-Smtp-Source: ABdhPJwyHe4r5h2oNwr4pvsYp2B4Sv31cqf/wYZ33rDV3X/q5nbKycekt7BcAGwcYmKD7sGqAXaaVQ==
X-Received: by 2002:a2e:580d:: with SMTP id m13mr2152302ljb.141.1607034895295; 
 Thu, 03 Dec 2020 14:34:55 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id 83sm883475ljf.64.2020.12.03.14.34.53
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Dec 2020 14:34:53 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id v14so5080901lfo.3
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 03 Dec 2020 14:34:53 -0800 (PST)
X-Received: by 2002:a19:7d04:: with SMTP id y4mr2099404lfc.344.1607034892834; 
 Thu, 03 Dec 2020 14:34:52 -0800 (PST)
MIME-Version: 1.0
References: <20201203103315.GA3298@nautica>
 <CAHk-=wigRSokT5YLRGH5Jyun1CwgYHR_1RMcoHjUyz7NJ8wG_g@mail.gmail.com>
 <20201203221456.GA20620@nautica>
In-Reply-To: <20201203221456.GA20620@nautica>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 3 Dec 2020 14:34:36 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjh2=Afx3Eb18RW_APaBKMppmpCpAfFd+n_4DttWJeFow@mail.gmail.com>
Message-ID: <CAHk-=wjh2=Afx3Eb18RW_APaBKMppmpCpAfFd+n_4DttWJeFow@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kkxBu-000onj-0E
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.10-rc7 (restore
 splice ops)
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
Cc: v9fs-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 3, 2020 at 2:15 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> The problems I had with dkim are all lists that add footers so really
> not much to do about header filtering

Yeah, that's obviously always going to be a problem with DKIM.

But I think all the kernel mailing lists are good now - at least
partly because I used to complain about it.

The one thing that vger still does - or at least did not that long ago
- is to change whitespace in headers. But that is perfectly acceptable
SMTP behavior, and it's a problem only when somebody is using
"c=strict/strict" in their DKIM setup. And honestly, that's a
completely invalid DKIM setting, I don't understand how the DKIM
people ever thought it was ok (probably some company politics or other
because some vendor was too incompetent to implement the proper
relaxed hashing).

          Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
