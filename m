Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E755D22559E
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jul 2020 03:52:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jxKym-0000ce-LD; Mon, 20 Jul 2020 01:52:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viro@ftp.linux.org.uk>) id 1jxKyk-0000cW-O3
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WHWOZzHdVYb0h8iJtAqDKFKZa1ZaV3F5QcVIWs9v/2k=; b=cLZXf7wxQ3NztB0A61+53LXRU
 WLYPcWsY1BxXW86GzUDwpn0gR2oMRzTbjJtApUh/y99PIWmJcWljLkFK0hrUy1f4wLxeoJiQHmpad
 CrO/cuRLF03XyqoOW+HEbEqXvU1qkck/n+2RQoNSW2uGRlQIm9XiHJ9ciE+XCYJqh71yM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WHWOZzHdVYb0h8iJtAqDKFKZa1ZaV3F5QcVIWs9v/2k=; b=nPf4LgH8tXI0NNFfKI/VmM2Myx
 /b+618khtzHkbYC7J492G/4hTHv3wjviVcpccN5nVFjyZy9jkZJiuofhajPqrz0o7fw1UINfCm0w3
 Six/iaxN5nDIcfctB977/1CgUShDoLH98/LS7TK31N4aIdQFrLFmOKu2YdwJU9bp+yUs=;
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxKyj-00HXQW-1g
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:52:30 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jxKyS-00GFpV-2E; Mon, 20 Jul 2020 01:52:12 +0000
Date: Mon, 20 Jul 2020 02:52:12 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200720015212.GN2786714@ZenIV.linux.org.uk>
References: <20200720014622.37364-1-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200720014622.37364-1-jianyong.wu@arm.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jxKyj-00HXQW-1g
Subject: Re: [V9fs-developer] [RFC PATCH 0/2] vfs:9p: fix open-unlink-fstat
 bug
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
Cc: lucho@ionkov.net, justin.he@arm.com, wei.chen@arm.com, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 20, 2020 at 09:46:20AM +0800, Jianyong Wu wrote:
> how to reproduce:
> in 9p guest:
> 
> struct stat *statbuf;
> int fd;
> 
> fd = open("tmp", O_RDWR);
> unlink("tmp");
> fstat(fd, statbuf);
> 
> fstat will fail as "tmp" in 9p server side has been removed. 9p server
> can't retrieve the file context as the guest has not passed it down.
> so we should pass the file info down in 9p guest in getattr op.
> it need add a new file member in "struct kstat" as "struct istat" does.

Er... what struct istat?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
