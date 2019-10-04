Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80742CBEF2
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Oct 2019 17:19:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iGPMm-0005yj-Ar; Fri, 04 Oct 2019 15:19:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <krzk@kernel.org>) id 1iGPMg-0005yT-MZ
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Oct 2019 15:19:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7HjTByvzu8ShEqZ8Sy3LeD9aN7PsfKRc3x/iuP2bpPM=; b=NcMVFQHm49YPcFtdVRr/AKCkXJ
 Vhj6JUQZF/49jFqiK5LLUNMp9YuLB5cUYzVgHdOu7w++0fNqeBMZHZbP6xvtA3FE4QVUQdvA8R/dB
 b39xewF6C7XONBUKwJsLPLle0TWeQFBadsEP/d8/AIjyEgh8NIE8nl7CqbnKuR5nBfgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7HjTByvzu8ShEqZ8Sy3LeD9aN7PsfKRc3x/iuP2bpPM=; b=NLlPS2iGbcQzGcewEo7pt11t3f
 Z4g6R6KsnyNS1ia1PaQtaOHJE0AJTbLRX7oemN5Vntb4KiznFVgdQYUH0bqqJ0/U+hacnS4MFZcYP
 JbH7H4AS4/K90f9Wemh8I/0GNdnzI/qfvURAjsQ+F1BRocfMupRtqckjjprb8yfwl8mg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iGPMf-00Gsn7-Kp
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Oct 2019 15:19:30 +0000
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0F97222CA
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  4 Oct 2019 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570202363;
 bh=M5+OP0C7bH8g4alRKHkF9BOu2CIDNCLVySSeuKwcpOw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=b6/jzAnDjb6xpzkFpwbf9jb1gAfI7h+uV/bCk3yqqWvPCCOHFv98o3z/O+2VQoetR
 1SBzvZekcGRpybjr/NOZ4N+WGFQQpHOaS3QkgPyjU/ZW9Q+LSkJnzwiImDPJaiW/IX
 fQk720EuOH3wQLQ+wFzMMFljxxegoUD3qgLIyWKg=
Received: by mail-lf1-f44.google.com with SMTP id 72so4750603lfh.6
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 04 Oct 2019 08:19:22 -0700 (PDT)
X-Gm-Message-State: APjAAAW/AxhCV8IG7WdIEqBE+HqBd6juJUIIREGY7v52Go/E8DK+OUxJ
 10x0dNpD3mi5prqhIYmPp+xOkoBG9FojTQLhHAg=
X-Google-Smtp-Source: APXvYqzsMWLRJ8Xp3xwwJCUFKB9iLKSsHQhlyh9TGJTJDW+xLrwe2s6/G9RAIUq1kyCNWedZWpQzahnVXH+EAatAAak=
X-Received: by 2002:a19:7d55:: with SMTP id y82mr9289884lfc.106.1570202361022; 
 Fri, 04 Oct 2019 08:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191004145016.3970-1-krzk@kernel.org>
 <20191004151448.GA19056@nautica>
In-Reply-To: <20191004151448.GA19056@nautica>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 4 Oct 2019 17:19:09 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdn4j2vNcsBZOOZeO3_c4f--eJvoUzsf_1nY7LK4-uubA@mail.gmail.com>
Message-ID: <CAJKOXPdn4j2vNcsBZOOZeO3_c4f--eJvoUzsf_1nY7LK4-uubA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1iGPMf-00Gsn7-Kp
Subject: Re: [V9fs-developer] [RESEND TRIVIAL] fs: Fix Kconfig indentation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-nfs@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 4 Oct 2019 at 17:17, Dominique Martinet <asmadeus@codewreck.org> wrote:
>
> Krzysztof Kozlowski wrote on Fri, Oct 04, 2019:
> > Adjust indentation from spaces to tab (+optional two spaces) as in
> > coding style with command like:
> >     $ sed -e 's/^        /\t/' -i */Kconfig
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> Send this to kernel-janitors@vger.kernel.org ?
>
> I can't pick this up as a 9p maintainer and most probably everyone else
> in copy feel similar, this is stuff where they might be able to handle
> this smoothly.
>
> (I have no problem with the 9p part of the patch, so add my ack or
> whatever if you feel that is useful, but it's honestly trivial as you
> wrote yourself)

Thanks, indeed I forgot about kernel-janitors. I sent it only to Jiri
Kosina who is mentioned as handler of trivial patches.

Best regards,
Krzysztof


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
