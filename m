Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A48274E190E
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Mar 2022 00:48:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nVifo-0003Yx-2y; Sat, 19 Mar 2022 23:48:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nVifn-0003Yr-1Q
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Mar 2022 23:48:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6n/sDsvAuIPEifJSzKj64MzdJQCs8pJY1Y2N6jUReiU=; b=BbGB40RmOJDzkNx+nHN6CHahqH
 totlWhbcq5C2cnJ8yNGhvbg2cCxFBrtxGAHJn9+h4QnNL3wGyt2B6aBz6kzkvvK14eDYJd5abQHAN
 BsUxQ1pg1HVhKEI7F/tVH9RIqjBufCDlg2GJcbpfsqfHSGZ/3IiTVpGCcB6ow9iCGWq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6n/sDsvAuIPEifJSzKj64MzdJQCs8pJY1Y2N6jUReiU=; b=FiXdCGkl5RxjDxnwgdc4LCOwJd
 ZtuBBBlMRBu6njVXTInLmfPAhHInrUolPfHOmsA0VZ1RAj1TWsFlkYs4cOFNDSXZCbjwf1jGeOzoN
 Z8PEqDmGloJW6Vf22ZDw1sNVthGu+RvvoQTpK76A+k3lQnROGrFsnQ+pQR4FtzSW7m0E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nVinf-000743-2w
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Mar 2022 23:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647733673;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6n/sDsvAuIPEifJSzKj64MzdJQCs8pJY1Y2N6jUReiU=;
 b=EIU3ZCk/UJ2FWgu2yLgmHKiAfGBJ+qej/BKUQc7cUa98n+n8q23JVWTSSYK6CPJDONzO52
 fDgDpVr4Rx67tDoSAvBgurcoqYngmHJsLX6qoImditoMqlAMTqm0UzKvnaV3Ao3Frg8JoZ
 8jYUkqk1wQhJvoIEJc/WdkYjFE3VCfA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-313-CVtg9R1OMg6ffmTpYKYm1Q-1; Sat, 19 Mar 2022 19:47:47 -0400
X-MC-Unique: CVtg9R1OMg6ffmTpYKYm1Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A6B6811E76;
 Sat, 19 Mar 2022 23:47:47 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7E10C40CF8F2;
 Sat, 19 Mar 2022 23:47:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAOi1vP_sEj7i8YbbwJibbSG=BCVp4E9BAo=JF0aC79xBNC8wcA@mail.gmail.com>
References: <CAOi1vP_sEj7i8YbbwJibbSG=BCVp4E9BAo=JF0aC79xBNC8wcA@mail.gmail.com>
 <751829.1647648125@warthog.procyon.org.uk>
To: Ilya Dryomov <idryomov@gmail.com>
MIME-Version: 1.0
Content-ID: <824347.1647733664.1@warthog.procyon.org.uk>
Date: Sat, 19 Mar 2022 23:47:44 +0000
Message-ID: <824348.1647733664@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Ilya Dryomov <idryomov@gmail.com> wrote: > Given how your
 branch is structured, it sounds like the easiest would > be for you to send
 the netfslib pull request after I send the ceph pull > request. Or do you
 have some tighter coordination in [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nVinf-000743-2w
Subject: Re: [V9fs-developer] Coordinating netfslib pull request with the
 ceph pull request
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Ceph Development <ceph-devel@vger.kernel.org>, Xiubo Li <xiubli@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ilya Dryomov <idryomov@gmail.com> wrote:

> Given how your branch is structured, it sounds like the easiest would
> be for you to send the netfslib pull request after I send the ceph pull
> request.  Or do you have some tighter coordination in mind?

I think that's sufficient - or if I sent mine first, I can put in a big note
at the top saying it depends on yours, when you decide to post it.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
