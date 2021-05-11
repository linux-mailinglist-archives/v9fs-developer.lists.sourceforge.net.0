Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3061937A6FF
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 May 2021 14:44:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgRkv-0002sQ-Gs; Tue, 11 May 2021 12:44:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lgRkt-0002rz-JJ
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 12:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4o6Ffa69FMsQW/au0oF06r8P6K3EowOIgk81rhbEYjA=; b=e4KJr6YzhfPpHCI//0NoISX5NR
 DZ+NXSx9QGQsEjelL8flXKoG3ibsjzaWED/eKqKsyMn7LxJvLJvZv6LFNvYRhIHLpRyWUCvryMZ/8
 4FV/vni/28Zc8cO2ItMbR8kzpHZ3atuOkovVu0SHYlRuWcn8HZlpsEgjTGWSVrQMQbOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4o6Ffa69FMsQW/au0oF06r8P6K3EowOIgk81rhbEYjA=; b=IzyjxcAgfRfRxRyCPe3wKs7weC
 cCan1e/InEywbsp/dVsHc9gd+lhtxfUVmIFQ7m0wqdEK1pHq9BEj8cwaKDaBJMnUJ5yqVx97wFogj
 KTnpzUE3L1gaE5l46+Z6+Kcjei2VQOknjiFKVrZmDJ3eKWefjqFT4qfKAvgcht7JcPw4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lgRkm-003nmI-Is
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 12:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620737082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4o6Ffa69FMsQW/au0oF06r8P6K3EowOIgk81rhbEYjA=;
 b=aFdyKYP+bi3CUgFSSRIOrh0dQpG53QRmxiF+ZFb2bQp4fVG4/4LP/1oAcE9PbLkePbKDwg
 UgBeux5wZYiFGk4r9h1gFH+du/MNa64TuaVfuxTqcMiRSXLwrukh5tqs1zJBcMeoTMiUna
 uBED7L53rrK2ZDmZDbL7oo0eZRO7fR0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24--3vElt0XMX-g6IsiQlSJxw-1; Tue, 11 May 2021 08:44:40 -0400
X-MC-Unique: -3vElt0XMX-g6IsiQlSJxw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41360800FF0;
 Tue, 11 May 2021 12:44:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0B8BC5D9E3;
 Tue, 11 May 2021 12:44:37 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <871rae24kv.fsf@suse.de>
References: <871rae24kv.fsf@suse.de> <87czu45gcs.fsf@suse.de>
 <YJPIyLZ9ofnPy3F6@codewreck.org> <87zgx83vj9.fsf@suse.de>
 <87r1ii4i2a.fsf@suse.de> <YJXfjDfw9KM50f4y@codewreck.org>
 <875yzq270z.fsf@suse.de>
To: Luis Henriques <lhenriques@suse.de>
MIME-Version: 1.0
Content-ID: <2508105.1620737077.1@warthog.procyon.org.uk>
Date: Tue, 11 May 2021 13:44:37 +0100
Message-ID: <2508106.1620737077@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lgRkm-003nmI-Is
Subject: Re: [V9fs-developer] 9p: fscache duplicate cookie
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Luis Henriques <lhenriques@suse.de> wrote:

> +		if (data->inode < inode)
> +			node = node->rb_left;
> +		else if (data->inode > inode)
> +			node = node->rb_right;

If you're just using a plain integer as the key into your debug tree, an
xarray, IDA or IDR might be easier to use.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
