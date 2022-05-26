Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5605356E4
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 02:00:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuNPH-0003Vs-To; Fri, 27 May 2022 00:00:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nuNPF-0003Vm-Ul
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fd3AmZ5c2EXp0lmLUJ+sKREKqjhalZD5/f8lKuTHF04=; b=Knv+6par8kdjQTE7C8wq73jFW9
 T4CslyaBkx1pWZ1ZShBXO1aV9sLR3+RnTAhrdIMpc5+X59HeLBPLleIl4jBEmrsTS0akyj0HLODeg
 O6HQWV+RUZX6YHfyTm3PWPajSbkFZ/rnpYBBnnYZbz3mUxfHgavP1L3h4aw+tHhCpVm4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fd3AmZ5c2EXp0lmLUJ+sKREKqjhalZD5/f8lKuTHF04=; b=h
 0nxuQiHErAKUbyo0GACmUM9C7d+NfmPjbyB41XfojVC7bVxyWt/pgdQarGp1YWjDA/+IzzPwmeVr7
 M39MtsVhOtbFeoIHjNP5/muchOzuLvVxnR01T27wJuJKHDYburSpMheCxf+Ziq3jJkFv5bi8lJsWY
 8Z/rOY1iOKWzz/0I=;
Received: from [13.77.154.182] (helo=linux.microsoft.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nuNPA-0000H2-IE
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:40 +0000
Received: from sequoia.corp.microsoft.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 08A0320B71D5;
 Thu, 26 May 2022 17:00:21 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 08A0320B71D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653609622;
 bh=fd3AmZ5c2EXp0lmLUJ+sKREKqjhalZD5/f8lKuTHF04=;
 h=From:To:Cc:Subject:Date:From;
 b=qJlGTFzmxbhCAfoUYXyQLf7yxV9+Iz1ehzDKm+m5Y5ApGFNte7W+R061JcEXZkQ4a
 x6KxIV9If17zFo0QtHclwlk1HiQichWF2Nq6lgG9KiavxCUglCzcHxUJ4wn2aa1sRW
 jVDpMWhqPnbTznn/FsYMgkFbYX/NGX7d+OGEZSDk=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 26 May 2022 18:59:58 -0500
Message-Id: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -15.8 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  v2: - Simplified the first patch, by removing code cleanups, 
 to reduce churn and minimize regression potential in stable trees + The
 resulting
 changes are *identical* to the v1 submission when patches [...] 
 Content analysis details:   (-15.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.8 PDS_HP_HELO_NORDNS     High profile HELO with no sender rDNS
X-Headers-End: 1nuNPA-0000H2-IE
Subject: [V9fs-developer] [PATCH v2 0/5] 9p: Fix refcounting and improve
 readability in lookup
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
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

v2:
- Simplified the first patch, by removing code cleanups, to reduce churn
  and minimize regression potential in stable trees
  + The resulting changes are *identical* to the v1 submission when
    patches 1, 2, and 3 are applied
- Added patches 4 and 5 which are additional, minor code cleanups
v1: https://lore.kernel.org/lkml/20220525182530.266068-1-tyhicks@linux.microsoft.com/

The primary motivation for this series is patch #1 which fixes a
refcounting issue in the path walking code of
v9fs_fid_lookup_with_uid(). Userspace can cause fids, which are created
for use during lookup, to not be clunked and make the mount unusable.

The remaining patches are code cleanups to improve readability. They're
not critical.

I tested v1 and v2 by running fstests against 9p inside of QEMU to
ensure that the results were the same as without my changes applied. I
also backported patch #1 of v2 to linux-5.15.y (v5.15.32) and ensured
that the 'fid not clunked' issue did not occur when running against the
Windows Subsystem for Linux (WSL) 9p server.

Tyler

Tyler Hicks (5):
  9p: Fix refcounting during full path walks for fid lookups
  9p: Track the root fid with its own variable during lookups
  9p: Make the path walk logic more clear about when cloning is required
  9p: Remove unnecessary variable for old fids while walking from
    d_parent
  9p: Fix minor typo in code comment

 fs/9p/fid.c | 50 ++++++++++++++++++++++----------------------------
 1 file changed, 22 insertions(+), 28 deletions(-)

-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
