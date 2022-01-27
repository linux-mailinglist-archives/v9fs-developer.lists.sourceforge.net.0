Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9076F49D949
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 04:34:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCvYU-0003Xn-3f; Thu, 27 Jan 2022 03:34:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nCvYT-0003Xh-0v
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:34:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1v6/vBO/XCfXEOms7guuPAl9cKa9yrH3DPztNj5akJs=; b=Oi5QtF2IWcPIhkYS1HqhecYvJ6
 VAetG6g/I1dH254LGyHUkmUPo7EglmTqf9+CFGZtsp+5shkLEFsLL9Jo3uVsi8DzKO+UJb9bFGrAA
 auZIOOKDpGPP12KZEij/7mXcJ7MIFELIBzrvYZh3sDJQgZJYGWrRUc2HSnvkZXVEa5Rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1v6/vBO/XCfXEOms7guuPAl9cKa9yrH3DPztNj5akJs=; b=m6EvkaDGOPsneGfTk7D+yOnR1h
 gjZN9TDiTKbpUSkohU9D/OxNR8Ct3XWXU/UbXRLn79AKXuGMydvlDh3aZhLg6uGtVvz5MyFA7UAqQ
 bpx/G1dhM4rGY49H166mzP7JoXatCnTUpLP5TjOSvcnoPwTo0++olVU21IIluPCOTz08=;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nCvYR-00FWgw-2T
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:34:35 +0000
Received: by mail-oi1-f170.google.com with SMTP id e81so3515014oia.6
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Jan 2022 19:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1v6/vBO/XCfXEOms7guuPAl9cKa9yrH3DPztNj5akJs=;
 b=puVQmOmEpAMFmTIlZvRrtuO0HQJ4ac9HyZ6Dts7Ujd40PxPBZYEp44RWuTl2nQ7r1G
 7cUXh6502KBHjum/zmb8AIZxCm/bkimTyfgvFyRTLYOJqfTyxgn4b2ipGhfFrVDc8n2Y
 3QJxFWSoJCTmVOuwQ/NYrqELtzIf0qLIJSZsGoBOl3LnoAdxbOQPGAlbGxxdbj4kWMd7
 nuKvOH5RUHTcCyUKHyUMwbvcj+TFJZFxErLvbJBQpHdxB6NemAdjDTPMAqNuAYojTxws
 QJqRupbNnSalU9I+LU+3ObwN3XSmYxUORkdOIkRQH4b5GzUMXaPV8/QOUqSOerPBwloy
 KLFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1v6/vBO/XCfXEOms7guuPAl9cKa9yrH3DPztNj5akJs=;
 b=k3BpxSJYKCwX2SLlnxSfxuJ3urxOUm7I35x7tI9k9bfohTWVtQUP7dzk7HEyfmIOHV
 2f5aRet/2spQMmi4lbISL7PdyTCxqAXjnz5/DiQcUaP1SisKydPIsXWGE1+zfbXo7BCK
 GCqUO3TzWcLMzZkVCbXykp2POfGZI57bR+FL7dAsKtqrz1Dfv5DFNc47jK6+jiGt/TLw
 IwGIHeEM2PKtF46YOOc3OjVJnuqSxSLtauQrWVOmKniGtck9PwGbInUH/M8ugpledMRZ
 ph52bqHz55+CSCkn/fzZR2XCzQuISyptqb82pQ48HxZK2ar8UNFbk1VCz2VFVrySN6Dp
 1jcg==
X-Gm-Message-State: AOAM531V7AlgzR/KKl/INVVMK6ScbmyX8udDPdHW3tYtITtmG2KJ3CVM
 xbUVjYfAdLFOfUwqW+uUkdgFwJKrNn8X+lmg0FU=
X-Google-Smtp-Source: ABdhPJwCxmjDA/04cC6p0YFsQCOH6UwwdYBHu1gPcYl4MKcgogFM3JyLEHYUtwS36fT4V9vD7iJCWvsJSLqxblMT10I=
X-Received: by 2002:a05:6808:2388:: with SMTP id
 bp8mr5747733oib.327.1643254469336; 
 Wed, 26 Jan 2022 19:34:29 -0800 (PST)
MIME-Version: 1.0
References: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
 <YfIP9GQohscGomgX@codewreck.org>
In-Reply-To: <YfIP9GQohscGomgX@codewreck.org>
From: ron minnich <rminnich@gmail.com>
Date: Wed, 26 Jan 2022 19:34:18 -0800
Message-ID: <CAP6exYKZqJpfR+Tr3CwJrNE2Pzd-Fd2gYYW_P+he=ZStbBMHUA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks Dominique! That was fast :-) If you can offer a
 suggestion
 we might do on the server side, that would handle those earlier kernels in
 the series, I'm all ears. Meanwhile I'll let some friends at Google know
 so they're aware. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.170 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nCvYR-00FWgw-2T
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thanks Dominique! That was fast :-)

If you can offer a suggestion we might do on the server side, that
would handle those earlier kernels in the series, I'm all ears.

Meanwhile I'll let some friends at Google know so they're aware.

And, yes, that rule about walking has caught people several times over
the decades ...

ron

On Wed, Jan 26, 2022 at 7:22 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Hi,
>
> ron minnich wrote on Wed, Jan 26, 2022 at 07:01:37PM -0800:
> > I've discovered that all kernels past the commit referenced above
> > break the following simple program:
> > int fd3 = open(argv[1], O_RDONLY , 0);
> > if (fd3 < 0) perror("non cloexec open ");
> > int fd4 = open(argv[1], O_RDONLY , 0);
> > if (fd4 < 0) perror("2nd non cloexec open ");
> > int fd = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> > if (fd < 0) perror("first open");
> > int fd2 = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> > if (fd2 < 0) perror("second open");
> > printf("%d %d %d %d\n", fd3, fd4, fd, fd2);
> >
> > The output:
> > 2nd non cloexec open : Device or resource busy
> > first open: Device or resource busy
> > second open: Device or resource busy
> > 3 -1 -1 -1
>
> ugh.
>
> > As a result, programs can not open a file that's already open. This breaks an
> > absolutely incredible number of things, as you might expect.
>
> Yes, I'm surprised none of my tests exercise that...
> *tests*
> Ah, it depends on the server.
> Ok, this is probably the same as this:
> https://marc.info/?l=v9fs-developer&m=164182707911101&w=2
>
> > This causes real trouble for us at Google, as we are using the cpu
> > command from u-root: github.com/u-root/cpu, and 9pfs is load-bearing.
> >
> > Any thoughts on what we might be able to do to get things back?
>
> Yes, we "just" need to not mix fids obtained from open/create with other
> fids.
> In the other thread I had suggested just adding a flag to the search
> function to separate the fids, my first idea was just to not index the
> opened/created fids but we need them around in some cases. It's really
> unfortunate that no-one who worked on this patch series were aware of
> this part of the specification, the check in the go9p server looks quite
> artificial to me... But anyway I'm just rambling, we need to fix this.
>
>
> For now if reverting that patch works for you it might be the
> simplest way forward.
> It's also possible to make the server more tolerant as a workaround:
> https://marc.info/?l=v9fs-developer&m=164189977224789&w=2
>
>
> I'll try to find some time this weekend to send a proper fix, as it
> looks like it's impacting more people than I thought.
>
>
> Thanks,
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
