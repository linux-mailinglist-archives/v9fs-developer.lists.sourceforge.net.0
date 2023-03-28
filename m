Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AC96CB34E
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 03:45:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgyOk-0007WM-S8;
	Tue, 28 Mar 2023 01:45:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pgyOj-0007WF-3p
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 01:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YQla0TW59nexzECUIB8l6ijxi92CoG9Q1WVpaQ810fk=; b=MXgwj/VAFpHf0sfiz3so0oeCIa
 Sz33ZqPp+lWvYLuFhvHwKQubvVPaiQBQMkODtN3+eDwKEn7+D3Q3YGttTBB+4Fg+5izQ5+DDwYeWx
 bjJcAUuha05Dikpq/x/6Xm82g9LVWWhms0kam/Dor1JFa9Z1m4cwFPAgrNyp4nJC0CK4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YQla0TW59nexzECUIB8l6ijxi92CoG9Q1WVpaQ810fk=; b=kXnVL1q3eQ6c6lFhuCp8VrbVqT
 xKevtTbXVxEQRyPToYkJvQALuLphi5OC1wMIQqepSIRGRcO1Q5M3CPfeimn7X01RBP0KMhOiAWlG+
 eeRaopFE2HYlF4b0r2iS4B2RI7hE5A0FY1iKg7hKUr7sIr0yUkswO6m85AgIuhpP0hGU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgyOg-0001V1-33 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 01:45:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 79176C01E; Tue, 28 Mar 2023 03:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679967907; bh=YQla0TW59nexzECUIB8l6ijxi92CoG9Q1WVpaQ810fk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=03S1qvY0RwOGs4Or8BMkV+2Wm6jqYqEPYTzjo/MdEzgXafPTBRYQQ6Tf3P/i1JpaK
 adzI0oQ72BxcCnCdTUpaoOxAxCzvu7T+n6PzvDS5IoY+adHeDk6hLT+3gqkIVH/HZp
 pSvK7krkxqUni/Yzo2db9xLbTOe9S1RDcLfa0SNVdCxWfHtkswWPBJTPCSif7kUqS3
 Cxm42mtuMwn54yBaSXTFBP//DyKy9dQyWdQck+T4ygNPX4R3K/B82anmlCRQuBiiI2
 m5htV+QyF8UHpTE7vmV4TDmXrqXf4lpk/iJ6A4NC+3mHyU2P4aAy/F7fVf02CmUmXI
 DcnYoGEpx0ZWw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1E15FC009;
 Tue, 28 Mar 2023 03:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679967906; bh=YQla0TW59nexzECUIB8l6ijxi92CoG9Q1WVpaQ810fk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rAeSjQme87sFflbgUkx3kB1416Xzw3ceKJzQ9AVJOQz3o6AYMxHm0npJuYOD1A9Xc
 D19KzMpFdrUnl2NTJmh9xAl0icxnlBQIMKz6/+jYU0ONbigO1vvJQg8f3hiPueB2+O
 y/2qBj1BaO188TzZi4FhyfNAM3ELCtuW8rWhtJd1BxRIhYmJJ+eQQ/qEmu8dd+KDEQ
 cQifS/1kFEyHfzvDbLq2nMqLy3+WouRPTRVONfeHp+pK2t7Wz95B6JAdEvtaX496By
 B8ksb+/VA8THHIYZiRLgJz3Fo++9Px1FreRocMWmQJfGoMZ1ODTT2Sgr3hh7J0WmTK
 ofw02FOwJmjAQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 22878ea3;
 Tue, 28 Mar 2023 01:45:01 +0000 (UTC)
Date: Tue, 28 Mar 2023 10:44:46 +0900
From: asmadeus@codewreck.org
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <ZCJGjuOYR6nGXiAw@codewreck.org>
References: <ZCI+7Wg5OclSlE8c@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCI+7Wg5OclSlE8c@bombadil.infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Luis Chamberlain wrote on Mon, Mar 27, 2023 at 06:12:13PM
 -0700: > kdevops uses 9p for its client / host setup to enable rapid kernel
 > development on guests using the host to compile / guest to insta [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pgyOg-0001V1-33
Subject: Re: [V9fs-developer] 9p regression linux-next next-20230327
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Luis Chamberlain wrote on Mon, Mar 27, 2023 at 06:12:13PM -0700:
> kdevops uses 9p for its client / host setup to enable rapid kernel
> development on guests using the host to compile / guest to install
> a read-only-mount.

Thanks for the head's up!


> I updated the kernel today to next-20230327 and see the 9p mount won't
> come up and so boot fails. I'm starting to bisect and see next-20230301
> was OK. So at least have:
> 
> next-20230301: GOOD                                                             
> next-20230315: GOOD
> next-20230327: BAD
> 
> Once I narrow this down a bit further I'll poke back.
> 
> What sort of tests are run for 9p before some development changes get
> pushed into a tree that lands on linux-next? If none exists, simply
> testing 'make linux' works with kdevops could perhaps be a start.

I generally boot a qemu VM and run some semi-automated tests, and Eric
has his own set of automated testing, so we should both be testing stuff
that's being sent to -next, so I'm surprised it wouldn't mount at all...
(and I haven't pushed anything there recently)

There might be some unrelated change that impacts the way we're
mounting?
I've just built Eric's for-next branch and I'm not seeing any issue
there, I'll be checking the next tag you pointed at next.


I'm going to rant a bit here, but my main problem with testing is that
there are plenty of tools, but I have very little compute available for
this (just a small machine at home that's getting close to 10 years
old...), as this is really a free time activity which isn't getting any
funding.
[read: happy to spend a bit more time on 9p if it's getting paid :P]

(Linaro offered me some resources to build over different arches a while
ago and I've maybe used it once, but I never got to the end of their
LKFT (Linux Kernel Functional Testing, https://lkft.linaro.org/ )
framework to see if I am allowed to run the kernel that was just built
so it's a bit pointless if it doesn't go all the way...)


Eric brought up that we should share more tests and I definitely agree;
my setup is closely tied to my machine (mounts /nix/store over nfs and
runs tests on 9p from there as my host is running nixos), but if we
could setup some piece of shared infra to work on tests together I'd be
happy to add some of my tests there.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
