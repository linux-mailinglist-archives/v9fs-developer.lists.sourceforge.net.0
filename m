Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D02C6CC7EF
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 18:30:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phCD6-00037F-Fa;
	Tue, 28 Mar 2023 16:30:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1phCD5-000379-3r
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 16:30:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sbJZXkCRSOKyDS0HpqcO//VXNMUXl9aAxuTuerSCYBM=; b=TOBjNuI3aCXCmwU9jNiu6/1R9I
 ryQadqiBTdARQ4QLAMJ9Fhko/NEAOC01Q7EU7UrMEF8KdmU6VaRz2f1KpZM/7viXCTn35duuz2knf
 c8ZZAgCrjYeWliGomqlLCak2sOT2NTpsqui9g1bEf2YHuG1QyDK8Fxu3CpsR3HvuNQQE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sbJZXkCRSOKyDS0HpqcO//VXNMUXl9aAxuTuerSCYBM=; b=W
 LQmbQFrR7/s0PJVDT3LhMDBzn1N44ywjtaMc5I8s2LemkmX7lQ+DKM4XXQ45u5w48phogFz93Tir/
 9Kx4ICLCO727oARCWqoxI5zsWO/jCVSXbRVJdhyo/wMHFAJqFpxdgppeMmeC3YcL3QqsEZuu9aRsj
 SJh1v80GKsKcNPzo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phCD4-0001Ub-8N for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 16:30:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D0F2E6187D
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 16:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40C18C433D2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 16:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680021000;
 bh=a3YqLSfMXUag747LbZSJJpw22TYLvFg5gy63kKVOcyM=;
 h=From:Date:Subject:To:From;
 b=ZuXW0lwu1stJLwO88TNYQLmenZwG2GJDB9U9bLKlkqqPqWM4WzDrQ8fRJZlQC0zkt
 yRWBXKr2kCKdcoMwF/WMwzQPmk1ngVDu8P1ilkKxzZeLXNwlmmxJoUwASlTnCXOaPI
 8aSpHu0oon9aAzqZprxVKqjuB5N6xWTxL48pzex1yLJMBkpGJutwyygjr3vCGz3kzr
 NkyjRSBaILd2FZ4dHTTM/34wivUbAi50P45Td53i5s3RFB95/ZzOvpp741JlVC8ZVV
 1QKfXuSmo+RW8AGaA2N7gXcmQjPuIx/epnXgrC3SAJI50fj4i4Vm3Du8HxzgdXXxPk
 0ZY+1JN/UOSfA==
Received: by mail-yb1-f171.google.com with SMTP id z83so15847784ybb.2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 09:30:00 -0700 (PDT)
X-Gm-Message-State: AAQBX9dLNxE4UlOyDdX00FDOiYZo5nRkkENoVUhtUfdzt2k2vsCIyYoW
 ZbgZUhcgFQ9S0ZF0x9XktG3G4IM0KOYln9nFgEA=
X-Google-Smtp-Source: AKy350bGcCrtzzcJsGX4Lnvys/9zvdQcKr+O+bxiuUzFLkL9krvbpLyJ7kI8Po9fMMzq0RfMLeDgsL2fJaaxAPK7B3Y=
X-Received: by 2002:a05:6902:10c3:b0:b79:4826:e8e3 with SMTP id
 w3-20020a05690210c300b00b794826e8e3mr6022147ybu.1.1680020998425; Tue, 28 Mar
 2023 09:29:58 -0700 (PDT)
MIME-Version: 1.0
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Tue, 28 Mar 2023 11:29:47 -0500
X-Gmail-Original-Message-ID: <CAFkjPTn=TeWfJSwv0N-UvdbtSa7KUN9hzpqQGUTw+_s4R8ybqg@mail.gmail.com>
Message-ID: <CAFkjPTn=TeWfJSwv0N-UvdbtSa7KUN9hzpqQGUTw+_s4R8ybqg@mail.gmail.com>
To: V9FS Developers <v9fs-developer@lists.sourceforge.net>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: So as part of trying to pick back up some of the
 maintainership
 duties again I noticed that patchwork was no longer pulling stuff from the
 list, which makes it harder (for me anyways) to track what is [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phCD4-0001Ub-8N
Subject: [V9fs-developer] Mailing List
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

So as part of trying to pick back up some of the maintainership duties
again I noticed that patchwork was no longer pulling stuff from the
list, which makes it harder (for me anyways) to track what is in
flight.  IIRC this is because patchwork doesn't get along with the way
sf.net manages lists and there are other issues with the archive being
on sf.net as well.

I went ahead and asked kernel.org to set us up a new mailing list on
linux.dev so we can align with the other kernel mailing lists and more
easily plug into the unified archives on lore, things like patchwork,
and other workflows.  I imagine transition will take a little bit,
I'll put in a patch-request to update maintainers once it gets setup
and I imagine we'll probably end up with both for release cycle or
two, but then I may put an auto-responder on v9fs-developer asking
folks to use the new list.

You can subscribe to the new list by sending an email here:
v9fs+subscribe@lists.linux.dev
And the archive is here: https://lore.kernel.org/v9fs/

    -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
