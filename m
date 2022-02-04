Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B0D4A9E57
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Feb 2022 18:51:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nG2jv-00010d-Er; Fri, 04 Feb 2022 17:51:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1nG2ju-00010X-Cs
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Feb 2022 17:51:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o4hiJqR1yEZtQsqmzLlZSfYU8B7IPxJQai2V7jYSZc4=; b=JBNb2e2/2xRZEfLETOwMd0omNq
 KxXzszOmkJ4yldU8fDMIoNO6EJ4YN2IbCvi20elG13sYJFXdHOBbhTOzHZVe7yPhLwECTyux1/Jy+
 TKN4FzV2qwxlhCe4rREVBS3UrYhC+iE1A9U8UmDpAFprdSJaMgCs/mBHJDLn0jBrO/pE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o4hiJqR1yEZtQsqmzLlZSfYU8B7IPxJQai2V7jYSZc4=; b=cIEEbnudfXKx2/Gty3SfSAD6uG
 vpqFXryEw9h84GT3rr1D/rBDC1NW9CL0X/xgpICfekY93Tc5vJSyco2/2XYhqIxupz1yheyJoURqB
 AVyTiobDtyQpZypvW2WjVbXtyLS2aSx1xvr5EGW8xK1F/xHt37TSJvk62HX2AYA8Y8cM=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nG2js-0000FG-2N
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Feb 2022 17:51:17 +0000
Received: by mail-ed1-f47.google.com with SMTP id w20so10625359edc.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 04 Feb 2022 09:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o4hiJqR1yEZtQsqmzLlZSfYU8B7IPxJQai2V7jYSZc4=;
 b=RcFLddjHA0EwraDsXQJEq58cJTr2gUXIr9LfLuW9F/h0ucvYyxLmquBUMGKrYcyOpg
 NgOZnAMU8LjKRuXzparft+8yKW1fLvguR3OCDmH/Axos054DyKeWO1ZHsTYpT3+ztQzS
 AnA0982jKYnR0SSr8xJr9VFHphFQNA+Ixj/mU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o4hiJqR1yEZtQsqmzLlZSfYU8B7IPxJQai2V7jYSZc4=;
 b=1GYRretXBEWe8OZ1oXXR1tDWvGqvJ17rj1p0xdIqe2TVefv3ERE2nNKK/JDw/lhBtj
 U4bNbCBhZhBa5Uufn9CVjEmaVpgm8AumjloS9GSXaj55WM9H1cAF62oP4hs9pByHkLiT
 MLYTZk1obKi6tAmCaCVmn7caoTxou9DwTGyYEoZKNMRGFDe7C4saExDJhSOI6N5HkzT+
 FM7OzqVhzbe+zQe2bQv6tQMv7tkRnJWfcjiLYgO257Id5Ye+OHGc4JZeVMhdPT1tGtgx
 1greBQxqOYdc919CAzSMYomrwcAS84Uy/yv9XrNLLnaDcn//82Fs8FY6ItvexIBVsZWE
 cIWQ==
X-Gm-Message-State: AOAM532TLz/7hR5EWXLLAT44ggyQlIQaDw2e8QzLIpCFqakWbYqbKYAg
 TheI3EDo1CoaN9nEu5z36kC1DF7mP/fOn1sr
X-Google-Smtp-Source: ABdhPJzX76KzFTx+Pe6awG7QE/r1bcWrgI+bQ2KtMZKNqAY4P3Uej1ohAZT7qH8Wnd8IDG4n07LO9g==
X-Received: by 2002:aa7:cb8c:: with SMTP id r12mr270791edt.174.1643997069589; 
 Fri, 04 Feb 2022 09:51:09 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id p29sm1118083edi.11.2022.02.04.09.51.08
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Feb 2022 09:51:08 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id m14so12676848wrg.12
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 04 Feb 2022 09:51:08 -0800 (PST)
X-Received: by 2002:adf:f90c:: with SMTP id b12mr7765wrr.97.1643997067773;
 Fri, 04 Feb 2022 09:51:07 -0800 (PST)
MIME-Version: 1.0
References: <20220130130651.712293-1-asmadeus@codewreck.org>
 <Yf0Fh7xIgJuoxuSB@codewreck.org>
In-Reply-To: <Yf0Fh7xIgJuoxuSB@codewreck.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 4 Feb 2022 09:50:51 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgeEada1nT7yqc4SBKr9q9WeuBxDyJGZ9ebjP631ry81A@mail.gmail.com>
Message-ID: <CAHk-=wgeEada1nT7yqc4SBKr9q9WeuBxDyJGZ9ebjP631ry81A@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Feb 4,
 2022 at 2:53 AM Dominique Martinet <asmadeus@codewreck.org>
 wrote: > > I rarely send fixes out small things before rc1, for single patches
 do > you have a preference between a pull requ [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nG2js-0000FG-2N
Subject: Re: [V9fs-developer] [GIT PULL] 9p for 5.17-rc3
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Feb 4, 2022 at 2:53 AM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> I rarely send fixes out small things before rc1, for single patches do
> you have a preference between a pull request or just resending the patch
> again with you added to recipients after reviews?

Generally, pull requests are what I prefer, partly for the workflow,
partly for the signed tags, and partly because then the patch also
gets that same base commit that you tested on.

That said, despite all those reasons, it's a _very_ weak preference
when we're talking a single individual patch.

So if it's easier for you to just send a change as a patch, I still
very much apply individual patches too.

             Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
