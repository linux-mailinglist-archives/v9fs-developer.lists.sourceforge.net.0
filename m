Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9056523BC00
	for <lists+v9fs-developer@lfdr.de>; Tue,  4 Aug 2020 16:25:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k2xsi-00024i-Ok; Tue, 04 Aug 2020 14:25:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cohuck@redhat.com>) id 1k2xsh-00024R-8R
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Aug 2020 14:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BM2JMxKOJj4ZXY6F1Nf7SDJuSC0Of4l58aNBBuBK3iQ=; b=EeMYTSZOnLofUL0Ce1mERxT8ws
 mqlPfUwBf27sYcimfa804GD3DU0tuXsOiGzbKfT7FhbP+uyL2IcdBNFqvW4AJxfjY3E9klwYweJle
 C65AITeDM0gNwoKHKRkmFleJoIqpuTQ1+cL5iRWeBmoKcbGx5p38m4KJdc/N1O0tv1cI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BM2JMxKOJj4ZXY6F1Nf7SDJuSC0Of4l58aNBBuBK3iQ=; b=A1Ng6lW0mv5S4TsbftRm0CxXig
 MwJyvhKx8WOSsbWybnQUzOsDZAxvTBV0mpop5joRYD0+qmMqNP2MJrq1OKl5JPewyqX98yBQ/Q6tt
 l/SHrJwnHv41nLlQ2HoiTxYZjkr8FrvLmXrYGq7e1u6tJG+B/wfU8u4d1YWddLdDATsk=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k2xsf-00CIFW-IH
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Aug 2020 14:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596551123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BM2JMxKOJj4ZXY6F1Nf7SDJuSC0Of4l58aNBBuBK3iQ=;
 b=JCR6ViXIQwk/fZOar6hWodK1gAWTaUINwnDwPz7t0bbnD9zjUSHTZg4aTiTFVlzgqxZhlt
 Cr38tC+gOeHdQCZNzdvHqgjYP7AkpcW9TFf1vPweHR2OQlBXl4D3Z1RT64XTp9JOtVC4CQ
 dFT600G1qnWezlnEF6iCABsLi5u9dm8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-kxlU5sKgPl-pVpOICdJONQ-1; Tue, 04 Aug 2020 10:25:21 -0400
X-MC-Unique: kxlU5sKgPl-pVpOICdJONQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03E7679ED9;
 Tue,  4 Aug 2020 14:25:20 +0000 (UTC)
Received: from gondolin (ovpn-112-169.ams2.redhat.com [10.36.112.169])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BFA4C5C6DD;
 Tue,  4 Aug 2020 14:25:15 +0000 (UTC)
Date: Tue, 4 Aug 2020 16:25:13 +0200
From: Cornelia Huck <cohuck@redhat.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Message-ID: <20200804162513.6c0448ab.cohuck@redhat.com>
In-Reply-To: <20200803205814.540410-5-mst@redhat.com>
References: <20200803205814.540410-1-mst@redhat.com>
 <20200803205814.540410-5-mst@redhat.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2xsf-00CIFW-IH
Subject: Re: [V9fs-developer] [PATCH v2 04/24] virtio_9p: correct tags for
 config space fields
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 3 Aug 2020 16:58:50 -0400
"Michael S. Tsirkin" <mst@redhat.com> wrote:

> Tag config space fields as having virtio endian-ness.
> 
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---
>  include/uapi/linux/virtio_9p.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
