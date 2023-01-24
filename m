Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E0F678E50
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9DV-0004tb-4j;
	Tue, 24 Jan 2023 02:39:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9DU-0004tV-JM
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W03lUavWvh+5NbPsinIKPGwjvugxe2minBOHruecpUg=; b=j07+YM3XTJ3E8uGImYQJI1lSzS
 3Qj37UaQF2q9oVvy7qKtGAJmv19eAwXwQATWvZttYSbdyCwCr0ipHFURxu5lG+sdjgwQ0ZuynxVM5
 udmXYhFVH50cU2kLrgJ/jb0lIS+6vqI3jkdEeq+O5B6WyDc9dCvaGIw9Jurb28Eefh8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W03lUavWvh+5NbPsinIKPGwjvugxe2minBOHruecpUg=; b=j/J7eCrwMpwRJ6/o2CZKBDQz1F
 5lccxidjPrpVGS+6OWU723QjJACA5G4e3Ru5uySl5V3YU2fW48Vm2BMz+j8kKCf/kZMl3yxxz3TTW
 KwHWKvU6dcsjgByKouQx1AxYW2mfuAwtDBeqy/AYKCRT8S9U2eo216Sr8s9W8tpIHhkQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9DP-0004Yl-2K for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B313BB80EBB;
 Tue, 24 Jan 2023 02:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AE4DC433EF;
 Tue, 24 Jan 2023 02:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527947;
 bh=F4sTcOFyWGXSAq6Qam4JIEoGJfFTcWlqfUVCdiEqLJg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QNS87hUFKYpRtzfj7nyDEfEASgBqbRaKmb564FhjdiUgItaDg/ta0btS6/H13vUiy
 CJSmOqpRkh/dJQvA3ED9Lh3l17vSXmyFKhvhfZrd12CnjqlJZgw2+w52jQkiSaJdKc
 39jOnOFohqIP4JYj+IT4Dmyd3FF/Eq8yqBDT+5hDNs8zcl70n6Ih1XDpxx8bZxhuE8
 PcKZzLPwFOl8+1jr86yFID4VtvoZpO3qfpXGHn9xiulLIbCQF/X9sYKsxuUSWV9IeF
 TxBDFoCyAeFlsjePGrk5Qc1JfzERZN4sG9b3+qGzN+DeTT3y5sXK70+xNknavMuz5/
 k6qcnWBjGS6QQ==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:23 +0000
Message-Id: <20230124023834.106339-1-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221218232217.1713283-1-evanhensbergen@icloud.com>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is the third version of a patch series which adds a
 number
 of features to improve read/write performance in the 9p filesystem. Mostly
 it focuses on fixing caching to help utilize the recently inc [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pK9DP-0004Yl-2K
Subject: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
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
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is the third version of a patch series which adds a number
of features to improve read/write performance in the 9p filesystem.
Mostly it focuses on fixing caching to help utilize the recently
increased MSIZE limits and also fixes some problematic behavior
within the writeback code.

All together, these show roughly 10x speed increases on simple
file transfers.  Future patch sets will improve cache consistency
and directory caching.

These patches are also available on github:
https://github.com/v9fs/linux/tree/ericvh/for-next
and on kernel.org:
https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git

Tested against qemu, cpu, and diod with fsx, dbench, and some
simple benchmarks.

Eric Van Hensbergen (11):
  Adjust maximum MSIZE to account for p9 header
  Expand setup of writeback cache to all levels
  Consolidate file operations and add readahead and writeback
  Remove unnecessary superblock flags
  allow disable of xattr support on mount
  fix bug in client create for .L
  Add additional debug flags and open modes
  Add new mount modes
  fix error reporting in v9fs_dir_release
  writeback mode fixes
  Fix revalidate

 Documentation/filesystems/9p.rst |  26 +++--
 fs/9p/fid.c                      |  52 ++++-----
 fs/9p/fid.h                      |  33 +++++-
 fs/9p/v9fs.c                     |  49 +++++---
 fs/9p/v9fs.h                     |   9 +-
 fs/9p/v9fs_vfs.h                 |   4 -
 fs/9p/vfs_addr.c                 |  24 ++--
 fs/9p/vfs_dentry.c               |   3 +-
 fs/9p/vfs_dir.c                  |  16 ++-
 fs/9p/vfs_file.c                 | 194 +++++++------------------------
 fs/9p/vfs_inode.c                |  71 ++++-------
 fs/9p/vfs_inode_dotl.c           |  62 +++++-----
 fs/9p/vfs_super.c                |  28 +++--
 include/net/9p/9p.h              |   5 +
 net/9p/client.c                  |   8 +-
 15 files changed, 256 insertions(+), 328 deletions(-)

-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
