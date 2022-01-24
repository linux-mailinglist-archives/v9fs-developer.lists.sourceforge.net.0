Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA1B497D68
	for <lists+v9fs-developer@lfdr.de>; Mon, 24 Jan 2022 11:51:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBwwg-0003rA-KV; Mon, 24 Jan 2022 10:51:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <nikolay@oldum.net>) id 1nBwwe-0003r4-MR
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 10:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KYtcGh/GP1tUxyaiLE2ChD6/79iw+Jj7+TlYu6cXTHs=; b=V2RLAKad3L0UbTxy1DJx/huqaT
 7fWca/Nuq6zAf54G1qRF1O5U+zpbwcDAVwcZd7jnsiqjMZ5wh9hg6OtlgwIRlqvfZYqKKkzW19qke
 JGLeAQsMmAeUhmc55r8vFI1mA+g500QUQjhAbN6gbNVsUfKFP3h4RRjUeHWDhnweaPxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KYtcGh/GP1tUxyaiLE2ChD6/79iw+Jj7+TlYu6cXTHs=; b=gDGSzuf6IdsfP4p2a7kSM65h41
 6O0t7vU2S1SZKEM6JEfElcljoqq25whI1ZVSksamb8Wl9R+gU/NiNlgBh/O/6mzEc195b/rEnlIcQ
 QZXzAj7N/Z0JRXR8IkUUCePqPax3T6RBRiJFWtGcLJs/23MM6yQEbtD02An8TfU43d+U=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nBwwY-00AJOu-2N
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 10:51:30 +0000
Received: by mail-wm1-f52.google.com with SMTP id i67so1639886wma.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 24 Jan 2022 02:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oldum-net.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=KYtcGh/GP1tUxyaiLE2ChD6/79iw+Jj7+TlYu6cXTHs=;
 b=IO/7ufLJr1PCy+LIahgnJ9KS8S4l3QuZqAd+G1gHMxcPac+HaAaEP00kwNheaxRMIO
 qSsElsnXrY09z1dPDcaKFiZwbxsHsAoKiRqVUdYNaZgDB0F+M+xzG042aanrfZ+/QFZ0
 Hii8sjT9IBgisPugfl6Wumix4vj59yUfEj62Gh1T+Z2mgUlQRcaurDAPEjojgQC9+MZR
 5jvNBlMdM8CW0uWlr5NKrSA3UWoGHcwIoEG3i80ZQ232gHAli1JmKbzC+Y8aub/kKIty
 bbyME4jjnbZjuB7Gsb+l6RCoQBF350npuvBxzbWFURcBTUXITKOvyw7LhvdAyjF46F/B
 hiew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KYtcGh/GP1tUxyaiLE2ChD6/79iw+Jj7+TlYu6cXTHs=;
 b=cCfPatJT5Si/OBOcEAgvZ6atwDq6VmNa7EEZCwo/PDgq7XYE8eYYfYchJbRpViBos/
 aabBAgx6aSIAAXcOx9nnWQs5uY7ALawhcRG1VHANVTCY0l8Tu0tbi4DJQjg9KrzHcz5E
 +XaHVWtmgrXaHUS9norsh1jsXi6GLcGbnyu6/OYrZiZ3tao8p587ycskv3XovRsEGqdb
 icBcZswwHRb7xlgPevAP3Bou4v7/gDtpXsPdYgmNkxayl9lqYQZCF4LrHa8obtmMzZlP
 OQO6J8bzrr4h4UL17d5+8RrLelIojt6/KD+2sSRQEUXvsEUZFJykUy3saDkpZoEQCtHP
 e++A==
X-Gm-Message-State: AOAM532Bf8LJ2Am5WkykdIwG8UizzTteW3ElgI75e3yt/9r6aOqSqPxR
 Y1nx7zm9HvHTVrGFC9mNb679VEHCR2kpchlg1LU=
X-Google-Smtp-Source: ABdhPJx4OY3XdRL9HGCJWwspd4Mbl1sOgQjdVhzOAnEt4MWMpUts+IxcHA1Cx+T+h6Kbr9s8h2vLlg==
X-Received: by 2002:a05:600c:19cf:: with SMTP id
 u15mr1130233wmq.39.1643019676925; 
 Mon, 24 Jan 2022 02:21:16 -0800 (PST)
Received: from [10.98.7.9] ([149.235.255.6])
 by smtp.googlemail.com with ESMTPSA id
 l13sm14756741wrs.109.2022.01.24.02.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jan 2022 02:21:16 -0800 (PST)
Message-ID: <5111aae45d30df13e42073b0af4f16caf9bc79f0.camel@oldum.net>
From: Nikolay Kichukov <nikolay@oldum.net>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Mon, 24 Jan 2022 11:21:08 +0100
In-Reply-To: <1835287.xbJIPCv9Fc@silver>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <29a54acefd1c37d9612613d5275e4bf51e62a704.camel@oldum.net>
 <1835287.xbJIPCv9Fc@silver>
User-Agent: Evolution 3.42.3 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Christian, It works, sorry for overlooking the 'known
 limitations' in the first place. When do we expect these patches to be merged
 upstream? Cheers, -N On Sat, 2022-01-22 at 14:34 +0100, Christian Schoenebeck
 wrote: > On Donnerstag, 20. Januar 2022 23:43:46 CET Nikolay Kichukov wrote:
 > > Thanks for the patches. I've applied them on top of 5.16.2 ker [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
X-Headers-End: 1nBwwY-00AJOu-2N
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thanks Christian,
It works, sorry for overlooking the 'known limitations' in the first
place. When do we expect these patches to be merged upstream?

Cheers,
-N


On Sat, 2022-01-22 at 14:34 +0100, Christian Schoenebeck wrote:
> On Donnerstag, 20. Januar 2022 23:43:46 CET Nikolay Kichukov wrote:
> > Thanks for the patches. I've applied them on top of 5.16.2 kernel
> > and it
> > works for msize=1048576. Performance-wise, same throughput as the
> > previous patches, basically limiting factor is the backend block
> > storage.
> 
> Depends on how you were testing exactly. I assume you just booted a
> guest and 
> then mounted a humble 9p directory in guest to perform some isolated
> I/O 
> throughput tests on a single file. In this test scenario yes, you
> would not 
> see much of a difference between v3 vs. v4 of this series.
> 
> However in my tests I went much further than that by running an entire
> guest 
> on top of 9p as its root filesystem:
> https://wiki.qemu.org/Documentation/9p_root_fs
> With this 9p rootfs setup you get a completely different picture. For
> instance 
> you'll notice with v3 that guest boot time *increases* with rising
> msize, 
> whereas with v4 it shrinks. And also when you benchmark throughput on
> a file 
> in this 9p rootfs setup with v3 you get worse results than with v4,
> sometimes 
> with v3 even worse than without patches at all. With v4 applied though
> it 
> clearly outperforms any other kernel version in all aspects.
> 
> I highly recommend this 9p rootfs setup as a heterogenous 9p test
> environment, 
> as it is a very good real world test scenario for all kinds of
> aspects.
> 
> > However, when I mount with msize=4194304, the system locks up upon
> > first
> > try to traverse the directory structure, ie 'ls'. Only solution is
> > to
> > 'poweroff' the guest. Nothing in the logs.
> 
> I've described this in detail in the cover letter under "KNOWN
> LIMITATIONS" 
> already. Use max. msize 4186112.
> 
> > Qemu 6.0.0 on the host has the following patches:
> > 
> > 01-fix-wrong-io-block-size-Rgetattr.patch
> > 02-dedupe-iounit-code.patch
> > 03-9pfs-simplify-blksize_to_iounit.patch
> 
> I recommend just using QEMU 6.2. It is not worth to patch that old
> QEMU 
> version. E.g. you would have a lousy readdir performance with that
> QEMU 
> version and what not.
> 
> You don't need to install QEMU. You can directly run it from the build
> directory.
> 
> > The kernel patches were applied on the guest kernel only.
> > 
> > I've generated them with the following command:
> > git diff
> > 783ba37c1566dd715b9a67d437efa3b77e3cd1a7^..8c305df4646b65218978fc647
> > 4aa0f5f
> > 29b216a0 > /tmp/kernel-5.16-9p-virtio-drop-msize-cap.patch
> > 
> > The host runs 5.15.4 kernel.
> 
> Host kernel version currently does not matter for this series.
> 
> Best regards,
> Christian Schoenebeck
> 
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
