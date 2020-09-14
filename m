Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C442426832D
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 05:38:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHfJz-00049A-Ra; Mon, 14 Sep 2020 03:38:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1kHfJz-00048x-5c
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 03:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kcYBoy9HTtyV/4uR0x0yvdz8qVMejLxSLHgSZ+J0pjA=; b=g4EpijW9adXyMrzinU/qxHv2py
 LAbud5F4DqA/BDvWxO8OosNfzaHCFoetuE0sVOYYiMi/Q+BEHt5OidMYNM+svWlHiMXgTBLeaiZ5a
 GzNi0OhQ5zffd7ScLL/M/hTlVZkOfUPfIRMNX/8rRIj22fNmQcihkoFxTu5SKUA3Vlec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kcYBoy9HTtyV/4uR0x0yvdz8qVMejLxSLHgSZ+J0pjA=; b=ElR+jSuvfpoFtjGFl5vXbb1tTv
 pt6TSgOkqRA8CbQZMePZIjIpIPFWDjoFVu4A3uN+wbXPMtrFZ0owlpKVEk0hchlf1LAeOS1Qu74+I
 Z1i8IfvyOZyTJ42JDDhLRfLDzUNczZsIweQ7qs4VXqHdZ+Au23eSYhorMl+pkKJ+3klI=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kHfJu-007rio-MI
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 03:38:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B17A1045;
 Sun, 13 Sep 2020 20:38:12 -0700 (PDT)
Received: from entos-thunderx2-desktop.shanghai.arm.com
 (entos-thunderx2-desktop.shanghai.arm.com [10.169.212.215])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F2E7F3F718;
 Sun, 13 Sep 2020 20:38:09 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
Date: Mon, 14 Sep 2020 11:37:50 +0800
Message-Id: <20200914033754.29188-1-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHfJu-007rio-MI
Subject: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall bug
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
Cc: jianyong.wu@arm.com, justin.he@arm.com, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

open-unlink-f*syscall bug is a well-known bug in 9p, we try to fix the bug
in this patch set.
I take Eric's and Greg's patches which constiute the 1/4 - 3/4 of this patch
set as the main frame of the solution. In patch 4/4, I fix the fid race issue
exists in Greg's patch.

Eric Van Hensbergen (1):
  fs/9p: fix create-unlink-getattr idiom

Greg Kurz (1):
  fs/9p: search open fids first

Jianyong Wu (2):
  fs/9p: track open fids
  9p: fix race issue in fid contention.

 fs/9p/fid.c             | 72 +++++++++++++++++++++++++++++++++++------
 fs/9p/fid.h             | 25 +++++++++++---
 fs/9p/vfs_dentry.c      |  2 +-
 fs/9p/vfs_dir.c         | 20 ++++++++++--
 fs/9p/vfs_file.c        |  3 +-
 fs/9p/vfs_inode.c       | 52 +++++++++++++++++++++--------
 fs/9p/vfs_inode_dotl.c  | 44 ++++++++++++++++---------
 fs/9p/vfs_super.c       |  7 ++--
 fs/9p/xattr.c           | 18 ++++++++---
 include/net/9p/client.h |  8 +++++
 net/9p/client.c         |  7 +++-
 11 files changed, 206 insertions(+), 52 deletions(-)

-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
