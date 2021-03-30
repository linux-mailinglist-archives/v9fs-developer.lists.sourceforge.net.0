Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C9D34F3C2
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Mar 2021 23:53:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lRMIU-0008Aw-5I; Tue, 30 Mar 2021 21:53:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lRMIS-0008Ab-Vl
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 21:53:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6VmtjFhYhwPr5OyiXU90y4E8e677PMijp5uhdzB0pWw=; b=BhJjzKDL4Wz1JJ3oPhxdoOyYCW
 DiMk33rIARShEGkaFJyb/rPygIKEn5sctr+RXQi3o+eHaaJFEte5ayIcwgyd9RfZVzkx7oQIzQDHv
 t8JPZOZq5H53z7eVk8kGby0CO6rklXXrkY0B6LuDeTVRtLnz6rVgtptpm3+LX34IDFxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6VmtjFhYhwPr5OyiXU90y4E8e677PMijp5uhdzB0pWw=; b=m8shlmXT+1YuUl1EwawZVay03R
 soT8iv/a56R4GNo05DM/792bUX7L6MBYdBJGcOZ/ZdG8bwuhMUtGjmNPohsqUCsADesqxXsEu4ceC
 /oucxYVx3MuuDTDqLzlz9qy+xQcP/P2Zme4R3re3N/5AlLfzWMSCVL+636r4KotWXpxo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRMIM-00ERLD-13
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 21:53:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DEB11C01B; Tue, 30 Mar 2021 23:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1617141172; bh=6VmtjFhYhwPr5OyiXU90y4E8e677PMijp5uhdzB0pWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r2xtYcmClS86PCDnYJVvmrwr8Jy68IqK35UM+mpQC8fMeet4JA8EtSlu4QjAquSV6
 VQ27moR3cDbdrdbCb1ooZfpL+6MAT7Vu1Q9LKo7UIuW8Xr6zsvrIOyQ/3v+rOog2GR
 t33QCnJ47jg52pFG5QhId2CBjMPr7R5TFbUxw3g0zTwq4c3i6CXxwHi8sypAyh+t/6
 zREcizgreMGvE49K9MvadwYkar91inQMbnmUjzfqHr4TH86Xe0YsDKdbnELBgn5DuF
 pmRWy5zz2s31C1ysKg6KE+RhNKNc1Upc445HndKwlu4S2UibEj60AfjP77UF0xMUV6
 IoHMNwieZ3CPw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 98886C01A;
 Tue, 30 Mar 2021 23:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1617141172; bh=6VmtjFhYhwPr5OyiXU90y4E8e677PMijp5uhdzB0pWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r2xtYcmClS86PCDnYJVvmrwr8Jy68IqK35UM+mpQC8fMeet4JA8EtSlu4QjAquSV6
 VQ27moR3cDbdrdbCb1ooZfpL+6MAT7Vu1Q9LKo7UIuW8Xr6zsvrIOyQ/3v+rOog2GR
 t33QCnJ47jg52pFG5QhId2CBjMPr7R5TFbUxw3g0zTwq4c3i6CXxwHi8sypAyh+t/6
 zREcizgreMGvE49K9MvadwYkar91inQMbnmUjzfqHr4TH86Xe0YsDKdbnELBgn5DuF
 pmRWy5zz2s31C1ysKg6KE+RhNKNc1Upc445HndKwlu4S2UibEj60AfjP77UF0xMUV6
 IoHMNwieZ3CPw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 44fde785;
 Tue, 30 Mar 2021 21:52:48 +0000 (UTC)
Date: Wed, 31 Mar 2021 06:52:33 +0900
From: asmadeus@codewreck.org
To: Yang Yingliang <yangyingliang@huawei.com>
Message-ID: <YGOdoWkd3t0pVyfR@codewreck.org>
References: <20210330130632.1054357-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330130632.1054357-1-yangyingliang@huawei.com>
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
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lRMIM-00ERLD-13
Subject: Re: [V9fs-developer] [PATCH -next] fs: 9p: fix wrong pointer passed
 to IS_ERR() and PTR_ERR()
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Yang Yingliang wrote on Tue, Mar 30, 2021 at 09:06:32PM +0800:
> IS_ERR() and PTR_ERR() use wrong pointer, it should be
> writeback_fid, fix it.

Right.

Good catch, thanks
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
