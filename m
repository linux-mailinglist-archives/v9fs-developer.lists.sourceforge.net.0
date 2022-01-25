Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E4B49AE45
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 Jan 2022 09:45:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCHSI-0000SV-0B; Tue, 25 Jan 2022 08:45:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <nikolay@oldum.net>) id 1nCHSG-0000Rd-EP
 for v9fs-developer@lists.sourceforge.net; Tue, 25 Jan 2022 08:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BOQOqH5qvYEg34AeA2SYgpWItGQXG0S/+HKsMOf6FpA=; b=RYMAl30Si0b0fXv8psVZ4u/kua
 e7VzASqUMPevoxesKwxDogM8I3ZNszM8iiktZ8VrJOuOKebSgzq+PFPG2Jmn8G3NwoYCvMd41+152
 MoUTn00b4mr69mA1NQm0pObexInt+5dXPaXfH8NYAscazWYiCezaUYOpfjdYUn8w56ds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BOQOqH5qvYEg34AeA2SYgpWItGQXG0S/+HKsMOf6FpA=; b=IPopq11djE6UYQYf5uucT4Kwfl
 kvw02Yq8NuASGcwW7obczLlC0N0PVgcX6Kgnn3sYyjq3hdLmyoyrA8hr195OP8YhhDiV+XzJ0bhBR
 +9G9OMHdHeNEWg8rcieXbYpUSK8H0yBLH6eQKd01VvxqADnCupbarU/DSiuu0KZXrdRU=;
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nCHS9-00Bwji-Ih
 for v9fs-developer@lists.sourceforge.net; Tue, 25 Jan 2022 08:45:29 +0000
Received: by mail-ed1-f41.google.com with SMTP id l5so44223512edv.3
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 25 Jan 2022 00:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oldum-net.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=BOQOqH5qvYEg34AeA2SYgpWItGQXG0S/+HKsMOf6FpA=;
 b=TtEq2UIv3nNdDjJntCxnWLN9j0i44Y0n09H1knH5DmO4BdsaeU8eFUcJNo+3vuAbxO
 YJT+PVD0h7UJiuNFbokN/BB1gwqwhiLFFG8KSQjknkNH8vSSN/tLFldACC5faKTPebW5
 noJ7fAS7+ZJR/Trvy2sUxoidQHapw5yX4bY2BfPQ7RmsQ45/W5bH/wPGz2v+0VnFf3kx
 WT276mKeOnRgBGpBCSGzqCHN0mVMevgGAJhB8d30U9tERPyzzx5dhvSLeEBkQgPXCtG1
 3BZtpzZJnCkQ3CqAePEPcm6+VI+KhBbQD3Fm9fey/U9CuJQ9NNYn737xuSZH3vwyDuOQ
 Ltng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=BOQOqH5qvYEg34AeA2SYgpWItGQXG0S/+HKsMOf6FpA=;
 b=HNYahGsUrhpUhYtFFAqks4cWrGHZuYWKvSqvX7Uu/3aMm3/QfUH3cwG86AGl/ylmOd
 6br4akQLUUwO/PrKrN9BuKZKHn5Rsa22UwN8v9N9j9lXcP9MJKagLHw6npQytLHPtTrc
 xTlYGBovwEeaY2Em87PFDX9hCEg7IS8myIMth1W5sftScvztdkg/ez8Fcen+loWMKQZb
 s4hwqsODompEkbSOZc7TWUkjGVMXOaHqGxzXH4B5f1tZpLHEpxeFH/xI8lhm6PJyc7r1
 s0AkbYiFLUgc9ClUliXCCxfLJLdXnDTWw+x9/bBoOM0gKRQEo0rdY2t/lVJQQk5/CNap
 TdWg==
X-Gm-Message-State: AOAM530xY4i/9BPPThfECqd4x1Z2TVVHMm9B18JHqpQfnxwI18MbUxKg
 inFGJZVAXkZEjCOHotJYW29dOg==
X-Google-Smtp-Source: ABdhPJxsRNxrndfrnyrBh4PBOcneWl1CYwZfMNxVhp94uwuk+O3gg98rita8cZBDAOr2bQe+qllFlA==
X-Received: by 2002:a05:6402:2750:: with SMTP id
 z16mr18205933edd.242.1643100319072; 
 Tue, 25 Jan 2022 00:45:19 -0800 (PST)
Received: from [10.1.0.200] (external.oldum.net. [82.161.240.76])
 by smtp.googlemail.com with ESMTPSA id co19sm7881894edb.7.2022.01.25.00.45.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 00:45:18 -0800 (PST)
Message-ID: <31207345df2f8bf53fe3ee444806b6aa873d9e31.camel@oldum.net>
From: Nikolay Kichukov <nikolay@oldum.net>
To: Christian Schoenebeck <linux_oss@crudebyte.com>, Dominique Martinet
 <asmadeus@codewreck.org>
Date: Tue, 25 Jan 2022 09:45:08 +0100
In-Reply-To: <22204794.ZpPF1Y2lYg@silver>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <5111aae45d30df13e42073b0af4f16caf9bc79f0.camel@oldum.net>
 <Ye6IaIqQcwAKv0vb@codewreck.org> <22204794.ZpPF1Y2lYg@silver>
User-Agent: Evolution 3.42.3 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2022-01-24 at 12:57 +0100,
 Christian Schoenebeck wrote:
 > Besides QEMU, what other 9p server implementations are actually out > there, 
 and > how would they behave on this? A test on their side [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.41 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nCHS9-00Bwji-Ih
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>, garlick.jim@gmail.com,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2022-01-24 at 12:57 +0100, Christian Schoenebeck wrote:
> Besides QEMU, what other 9p server implementations are actually out
> there, and 
> how would they behave on this? A test on their side would definitely
> be a good 
> idea.
diod is a 9p network server, if these patches are purely virtio
transport specific, I believe they should not affect it. Here is the
source code for diod:
https://github.com/chaos/diod

Jim Garlick maintains it, added to CC here.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
