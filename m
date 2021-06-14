Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DE13A6D6B
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jun 2021 19:45:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsqeP-0000IQ-9y; Mon, 14 Jun 2021 17:45:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lsqeO-0000ID-Oy
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 17:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SJXA9AEn+G0ZxynctTM6t+9QwrNGEDMN+owDaQzZTPY=; b=VTBVyv6USHXaxqUvo5mkAs/lH2
 reCvaiLN7A6kY3TuvTHaS/6ML5eDVes1ug47KiG5QkR0POxYq2JsvHOcEc3N2NtvZYTXu3BfePNw7
 5HPlglrfYSAWxO3BedLDY2eddnfOmbXTiVCoPbi8dOBPNUFqSxvSB7GNo+ZR57ZxcfLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SJXA9AEn+G0ZxynctTM6t+9QwrNGEDMN+owDaQzZTPY=; b=f
 hEWm+9jLf2yl9au35h2Ghr79pQBZbdnRfeZSpDH8Th7hFbF1Z7bS5nJ/L67JkfNgYXpKOzLXz11n8
 uJ3t5uvZXD0tFDDTHT4mImSFsX4MXE2pLc+RHE+2dxBHbgLh/x9yaFtA+24rhJZ9ktb9BgqiG4EvR
 YtzeMF8CF/F9UP0U=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsqeJ-0003K5-0s
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 17:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623692718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=SJXA9AEn+G0ZxynctTM6t+9QwrNGEDMN+owDaQzZTPY=;
 b=PEDqulM1Ey6CLsSfZnRzIWtG9E9f4ZkqQJq/nt9UoV2nBfwYQwJc5TfPFzW0vHVA0j/uI3
 1XJSF1slLQ3QjhKkGXa2UJrE/GFIUW79IbMT++XrdISVgUi4FCdqTPE3erMSwXtptyGjqx
 /ivpZ51i6D68nU1TgkBdl5F8YNmNSb8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-cqRUetrsPwGt4IWVIOBmkg-1; Mon, 14 Jun 2021 13:45:15 -0400
X-MC-Unique: cqRUetrsPwGt4IWVIOBmkg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F9E59F92D;
 Mon, 14 Jun 2021 17:45:13 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-174.rdu2.redhat.com [10.10.114.174])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D491E5C1C2;
 Mon, 14 Jun 2021 17:45:06 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 5C9F422054F; Mon, 14 Jun 2021 13:45:06 -0400 (EDT)
From: Vivek Goyal <vgoyal@redhat.com>
To: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtio-fs@redhat.com
Date: Mon, 14 Jun 2021 13:44:52 -0400
Message-Id: <20210614174454.903555-1-vgoyal@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lsqeJ-0003K5-0s
Subject: [V9fs-developer] [PATCH v2 0/2] Add support to boot virtiofs and
 9pfs as rootfs
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
Cc: hch@infradead.org, miklos@szeredi.hu, richard.weinberger@gmail.com,
 dgilbert@redhat.com, dhowells@redhat.com, viro@zeniv.linux.org.uk,
 stefanha@redhat.com, v9fs-developer@lists.sourceforge.net, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

We want to be able to compile in virtiofs/9pfs in kernel and then
boot kernel and mount virtiofs/9pfs as root filesystem.

Currently there does not seem to be any good way to be able to do
that. There seem to be some hacky ways like prefixing filesystem
tag with "mtd" or naming the filesystem tag as "/dev/root" to
mount viritofs.

Both viritofs and 9pfs have the notion of a "tag" to mount a filesystem
and they take this "tag" as a source argument of the mount. Filesystem
understands how to handle the tag.

Current code already has hooks to mount mtd/ubi/cifs/nfs root
filesystems (apart of regular block based filesystems). So intead
of creating two separate hooks for two filesystems, I have tried
creating a hook for tag based filesystems. And now both the filesystems
benefit from it.

This is generic enough that I think many more use cases might be
able to take advantage of it down the line.

Vivek Goyal (2):
  init/do_mounts.c: Add a path to boot from tag based filesystems
  init/do_mounts.c: Add 9pfs to the list of tag based filesystems

 init/do_mounts.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

-- 
2.25.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
