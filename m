Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA84323F6E
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Feb 2021 16:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ApH4K904lCY4MMpwgwG6zHYtf8ZH0rZ6pnTpwv+tBCM=; b=HtgCDgRfhKkobkIp4GKuP1nWh
	TITDtnXulPKDlCAMvltEYY3ErVo2dQT1FhcTjEctOhsCWII2Q0hD6dcLjdw+UsmEkt/iNAeKUmyS+
	9Z86DsZI6ZmdjVF0vTTxaokLRh0elzsPJ9gNDYLjFCEVB6DlNvleffHmq5RxjNtnJFPks=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lEvuz-0008AB-Eh; Wed, 24 Feb 2021 15:17:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1lEvuy-0008A3-5I
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 15:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/y6xFzyCzw1KT1sJVP9w0ePufQ9CHZv14Yo6pv/8g4s=; b=iPx3kghuDsOd9PogjDiXwwOmA6
 Px/3ZhRdKTFYVbMgH/5mZ8AncwzXILT+qvhx51T5p4XsRewE6nPPyFeFngrt+4p1GOYNBAKyDSLzk
 RYOp4RsZRB1JKeREbyZWqJGTc4+EKgW8iBjvCUZ/IyKNouPmH8ACbRDWKEC+KRmu66GU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/y6xFzyCzw1KT1sJVP9w0ePufQ9CHZv14Yo6pv/8g4s=; b=OIrGcYHk27O22xGUfPI6FYVVDM
 daOIWO8ttvaittap3c6ApG/BCguLBb4vXvbS+wi8km81LxxGB3d5NAdz3WudcKvOegFk+guGMBgep
 PcMOmHia51QO4DpC+FvlRreMTkaQk2TtldyAgbJJJBuDd8MlIx8Nepz03w/jJ8o0LJZk=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lEvul-003nov-Qx
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 15:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=/y6xFzyCzw1KT1sJVP9w0ePufQ9CHZv14Yo6pv/8g4s=; b=lPaezqxKKhgEdyb2GpcJ7yFIjl
 ztGSuf6Rn/WteaZ3Oj3ZwnFFAChUJWeyUEu6HxWonSS3LF0NsMJOWdTDPlC555Az9Mj7akIHAKR6x
 6dOkznyj5KZLIwMGqrx9YaHAzP/xg/fCTm1WK2+DLoAY5owuBTzAKRXcNm+HMv9FAAxED/gW4bJL+
 zVkhnY/jF9pRj7LExnfAPhb0dMRYRijDKBZhKABA/SiHGQEu2R2748brJ8RlSLv+wFBuqNEjSS1o8
 czR7nVCx0qOipRdXf0VpW4fhCu4zU073NViCLWrk1bHGpq1zJVLaVARrhb4cWr+KqaLM/MXBWuPtc
 2EvAOaM22f4fFSC6Uy60LZZXtzQ/AcqE3KfRaFk80lOaWd6fayTHA0urUjf1zo9ChDW7X5ZYsa5mZ
 kmJ5BGieBhfq/rdVpcarA5Yj1vj5FoiDIvzCwtl13AOqjhUYcXnJlJ6qzHI4CGKndxPxtJL4uDxZ2
 mhH4AObrOSAt9W871eHOq3ysC41NERxeecRhLYjAteTbwWWIVWpFWDMSCcqRuj9LAzCPXYdrA0MI2
 8/yzb5pZmkMs6Mq0leUhZoAuNG8RbwQEkLiK9KIFiKkW94g7P8fc9a2hwTnI5LQY3Q9IOx9QulDCE
 eA6+C1b+0UcNYLQb8bPHu9yPveIsDMbEQA5tU4tAQ=;
To: "Michael S. Tsirkin" <mst@redhat.com>
Date: Wed, 24 Feb 2021 16:16:52 +0100
Message-ID: <2006960.IAZaadA1hq@silver>
In-Reply-To: <20210223090531-mutt-send-email-mst@kernel.org>
References: <20200918213436.GA3520@redhat.com> <6115734.fQeFoySBn5@silver>
 <20210223090531-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
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
X-Headers-End: 1lEvul-003nov-Qx
Subject: Re: [V9fs-developer] Can not set high msize with virtio-9p (Was:
 Re: virtiofs vs 9p performance)
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: "cdupontd@redhat.com" <cdupontd@redhat.com>, "Venegas Munoz,
 Jose Carlos" <jose.carlos.venegas.munoz@intel.com>, qemu-devel@nongnu.org,
 "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 virtio-fs-list <virtio-fs@redhat.com>, Greg Kurz <groug@kaod.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, v9fs-developer@lists.sourceforge.net,
 "Shinde, Archana M" <archana.m.shinde@intel.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 23. Februar 2021 15:07:31 CET Michael S. Tsirkin wrote:
> > Michael, Dominique,
> > 
> > we are wondering here about the message size limitation of just 5 kiB in
> > the 9p Linux client (using virtio transport) which imposes a performance
> > bottleneck, introduced by this kernel commit:
> > 
> > commit b49d8b5d7007a673796f3f99688b46931293873e
> > Author: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
> > Date:   Wed Aug 17 16:56:04 2011 +0000
> > 
> >     net/9p: Fix kernel crash with msize 512K
> >     
> >     With msize equal to 512K (PAGE_SIZE * VIRTQUEUE_NUM), we hit multiple
> >     crashes. This patch fix those.
> >     
> >     Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
> >     Signed-off-by: Eric Van Hensbergen <ericvh@gmail.com>
> 
> Well the change I see is:
> 
> -       .maxsize = PAGE_SIZE*VIRTQUEUE_NUM,
> +       .maxsize = PAGE_SIZE * (VIRTQUEUE_NUM - 3),
> 
> 
> so how come you say it changes 512K to 5K?
> Looks more like 500K to me.

Misapprehension + typo(s) in my previous message, sorry Michael. That's 500k 
of course (not 5k), yes.

Let me rephrase that question: are you aware of something in virtio that would 
per se mandate an absolute hard coded message size limit (e.g. from virtio 
specs perspective or maybe some compatibility issue)?

If not, we would try getting rid of that hard coded limit of the 9p client on 
kernel side in the first place, because the kernel's 9p client already has a 
dynamic runtime option 'msize' and that hard coded enforced limit (500k) is a 
performance bottleneck like I said.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
