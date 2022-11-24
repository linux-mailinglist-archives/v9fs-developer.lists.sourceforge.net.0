Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFCC637DA9
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Nov 2022 17:37:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oyFDl-0007KY-09;
	Thu, 24 Nov 2022 16:37:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1oyFDk-0007KR-4w
 for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 16:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=miyEx8Lvn6qBvvvvpZMBad8XUo7oHhn8LKm5H35p0iY=; b=KrMr+XxNsvoq6200cVLsTkfy4G
 ZJVo/nlttSDq4DUulfOudYtf3WsJY+7g+czoT3p56s0iaP2u134SotXa7ZrSBJ/wJQrpN3el47I2J
 hXSe0CGv8uFVD07DZ4apJm2j2vmdgcq+5WGWeoLIaAkSrWhw3KQz6rlBNqJg5nqVrfMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=miyEx8Lvn6qBvvvvpZMBad8XUo7oHhn8LKm5H35p0iY=; b=VvA2XuCcjihd9CPU8L0vFAYNw0
 stkNIMVz11c7PNjyFYtgS5UM//hRfDu35X8C2MJyreY+7PL5GJWwiBQpR8SicS5ubOY/DV+o1hQZV
 BkRhtGGOttajoaSBIbdvA8RGFwZpJcodOIBj7cnnShw9n4MlIRHRn5tB8rJcpMmuxK2c=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oyFDe-005KrS-EY for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 16:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=miyEx8Lvn6qBvvvvpZMBad8XUo7oHhn8LKm5H35p0iY=; b=au0bv3esIGNCwbpleIoD/gmreN
 V3Z0IPip15p0H9Xw1rTsoyl0PAF6DVHZl4pLDzbcogCNMVYDD923dL0b0OxfHhJBgTUabM31lr3Go
 ZrDKiCSk4YNsdL2Hv+MukyGKSMi2Ep0RlokzXjefT0BfKhd8Nr4vgmxh5L6sCH06HMaKHBWQnwKzY
 3fA3NsYSYu1aDRIgSUiGH3JtimB34qHvBjG5S4gCTHeVC6fGKiaKB7b5DadqKv4nSNOIP8xJy7kci
 4rn2ArI8X+YGsqQWlxi3xXXa7FPpvsVyALkgvL+m+90JrjAZjJk5KyI4spECoGtLipVEpo/QlnLJo
 PhGe5M5A==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1oyEsz-006TPU-3B; Thu, 24 Nov 2022 16:15:38 +0000
Date: Thu, 24 Nov 2022 16:15:37 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: asmadeus@codewreck.org
Message-ID: <Y3+YqUbLXZ1ouynB@ZenIV>
References: <20221124081005.66579-1-wanghai38@huawei.com>
 <Y382Spkkzt+i86e8@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y382Spkkzt+i86e8@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 24, 2022 at 06:15:54PM +0900,
 asmadeus@codewreck.org
 wrote: > Wang Hai wrote on Thu, Nov 24, 2022 at 04:10:05PM +0800: > > Both
 p9_fd_create_tcp() and p9_fd_create_unix() will call > > p9_ [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1oyFDe-005KrS-EY
Subject: Re: [V9fs-developer] [PATCH net] net/9p: Fix a potential socket
 leak in p9_socket_open
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
Cc: lucho@ionkov.net, Wang Hai <wanghai38@huawei.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Nov 24, 2022 at 06:15:54PM +0900, asmadeus@codewreck.org wrote:
> Wang Hai wrote on Thu, Nov 24, 2022 at 04:10:05PM +0800:
> > Both p9_fd_create_tcp() and p9_fd_create_unix() will call
> > p9_socket_open(). If the creation of p9_trans_fd fails,
> > p9_fd_create_tcp() and p9_fd_create_unix() will return an
> > error directly instead of releasing the cscoket, which will
> 
> (typo, socket or csocket -- I'll fix this on applying)
> 
> > result in a socket leak.
> > 
> > This patch adds sock_release() to fix the leak issue.
> 
> Thanks, it looks good to me.
> A bit confusing that sock_alloc_files() calls sock_release() itself on
> failure, but that means this one's safe at least...

sock_alloc_file() unconditionally consumes socket reference;
either it is transferred to new struct file it returns, or
it's dropped.  Makes for simpler logics in callers...
FWIW,
ACKed-by: Al Viro <viro@zeniv.linux.org.uk>
on the leak fix.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
