Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C8B68BD5D
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 13:56:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP137-0000Xr-BK;
	Mon, 06 Feb 2023 12:56:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pP136-0000Xl-GT
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 12:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WUeNszkbQMTGhFvp+l1608+BwS+mEFj0WlDccd7PUjM=; b=Zihso3AppaYj5QcjQq5ujjnL0W
 2qx+e4MNP5znxkWD4MDEm3ALRvsfbyg2w40QympRkeuaKXcHEzECTLGN0yFWVhwI7SZC1yw7A7hf8
 ux3nBTqCWhaaM3LpfpW9oMpNfQ953mB9RusGmt3qXLoQ+lj4J31vm5JsUsq3r+JtF5us=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WUeNszkbQMTGhFvp+l1608+BwS+mEFj0WlDccd7PUjM=; b=Z+5QLDK0Ht6ytl2B+c47iLKctC
 XiporrhW4SP6DHKWubLSKuHeBmH+s1vm3f41PbxAezzI2c57yoaJsqMmxzfa+H1UJX5sMOl5ligX4
 E7SrDG1AITLzhf4ee6lMcPjCL2syTIfAqgTCG1kMYO6WVXEbew6ih5Zw7PDMdrpfFL0Q=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP131-00CZEC-Ps for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 12:56:43 +0000
Received: by mail-wr1-f43.google.com with SMTP id m14so10233792wrg.13
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 04:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=WUeNszkbQMTGhFvp+l1608+BwS+mEFj0WlDccd7PUjM=;
 b=WK1ixuYhM2hURtZiU8YnuW7yyEMWygujdxI+xmUxNzGlIE0Y8H4DFm3oQcu2hg2ghN
 5j6dcelgQ4t1MfX9ZPWADESXcUHLSZb37KmAUeRlGWFLZb3x+V+gcAbn2TRXTEEkiU+E
 Tf6r+z0P7x8Hfjfc/wCku8Laa9tqFAFxT9k2afrjNocwE5aPmfds13uOtunfF/CaFIaA
 XhjEIbz7Zl+LxeBeBJlg+4Us0BBORBZK6Eg8feGbvbs94Dvvwu4olrqbq/fOIIihwZWb
 rwscUgr1Ik7Kea6+AV/WB3NwmqVLlJuaSUJYQz6j7EP91ePJRqjI0f+5aJpPaAhoOhvo
 CaMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WUeNszkbQMTGhFvp+l1608+BwS+mEFj0WlDccd7PUjM=;
 b=0Mx/5mSFD9Oe/5bL8T4TSwPGLhuEtgiOY3AtW/Lxhj7Xl7EYgq0E5+Ny174Q0K/3nN
 2/vKxQUDZvjscWvmRXYhSokFboM6fnMZ5eRnXn9qQcNXYTJaRdkJXWylLYDJczxJgWJ7
 pgi/QdMB7id7XKgYD14Vc3YJZJu4tkNjYVMwBuOyDosmG/PQuUAPhuBAind+GdJqGgTC
 L9oYRiZvSnuC8JfO99FT1aOCoHid73UKnh0XKXhHtoqkrWhLKUrby1lfIkgr50Zi+wk8
 lT0Crfu6EARPryPntivElFKwFWi62VqbZPet0+ZEUpucl7tC9hBW+AR3YbzlONTCjEVt
 l2Qw==
X-Gm-Message-State: AO0yUKWwheRLU/Yms61uKIV/mzVXbCDQAfmC43syIMmQQvH+AzZHoecS
 TeI8dea9lAWvtaTb5rkCsJtURoDXD8Qi0ilLpxz7qjGq
X-Google-Smtp-Source: AK7set8Jf9o8h/BXOVVFIAIs+yVzh2IyzcN0lbwddrnEBinM1DIz3OrjFCuAQYjmF6OW5N2fsg4zNHV0Zij5KNZRSTk=
X-Received: by 2002:adf:ea82:0:b0:2c3:ec08:75af with SMTP id
 s2-20020adfea82000000b002c3ec0875afmr93500wrm.104.1675688193191; Mon, 06 Feb
 2023 04:56:33 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <CAFkjPTm4SsB9rBX4ZZSZCYpiXgWYvQmViA_oALo5acdYNUUW2w@mail.gmail.com>
 <CAFkjPTnNT+d=u50D1omg8d5QECi-LQ8LZ_zEgoguS==S86KfoA@mail.gmail.com>
 <2067691.iETNyGmF9V@silver>
In-Reply-To: <2067691.iETNyGmF9V@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 6 Feb 2023 06:56:22 -0600
Message-ID: <CAFkjPTkkiG-R9Hb5VjAirLr56CJyjYbJdDD=-fzqMXgTEqxXcA@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  confirmed, I have reproduced without fscache (sorry should
 have made that clear in my updated messages) - am now testing across spread
 of kernel configs. On Mon, Feb 6, 2023 at 6:53 AM Christian Schoenebeck <
 wrote: Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
X-Headers-End: 1pP131-00CZEC-Ps
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
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
Cc: lucho@ionkov.net, rminnich@gmail.com,
 Eric Van Hensbergen <ericvh@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

confirmed, I have reproduced without fscache (sorry should have made that
clear in my updated messages) - am now testing across spread of kernel
configs.

On Mon, Feb 6, 2023 at 6:53 AM Christian Schoenebeck <
linux_oss@crudebyte.com> wrote:

> On Sunday, February 5, 2023 2:44:10 AM CET Eric Van Hensbergen wrote:
> > I suspect a major difference in our two test environments is that my
> > kernel doesn't have CONFIG_FSCACHE -- looking through the code paths,
> > there is some fscache code which isn't properly guarded with checking
> > if cache=fscache in the v9fs session.  This may be a red-herring, but
> > seems suspicious nonetheless.
>
> That was not the problem. I recompiled with CONFIG_FSCACHE disabled, still
> same (mis)behaviours though.
>
> Best regards,
> Christian Schoenebeck
>
>
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
