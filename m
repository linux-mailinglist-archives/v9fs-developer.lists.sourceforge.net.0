Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C149A44424C
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 14:23:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miGEK-000645-31; Wed, 03 Nov 2021 13:23:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1miGEI-00063x-MJ
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 13:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z83BEBMepikQKZaP7EwgKglGj7+Xl9d+0OspVk4dFzg=; b=lSlA1ymxNc6fhBtnSsuFfQBUNy
 YDLIGsTlpd4LeJ0Q/wWj/k/2C9+XIBH5rUSWNIB58VzWgxYizHTj0ZFPgIrl6RcfI6CHSVYW2vuxi
 RUkcgFo7K8lbcFQr1xf3ZfEp7YkoGQiBhwjWepw18ME28uRR+ZGGhrjuCnI5cb7URib0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z83BEBMepikQKZaP7EwgKglGj7+Xl9d+0OspVk4dFzg=; b=Abx6Tks4rnItmgR7fNkgbAnQAU
 HL7k3+rKCxfttDAm/WvxZhLEWrL2qUxI30d1dvhNCCmKYbqHsVDOM7yjr0t/LoRQz4n5lkP5nTpzB
 5PGiuGjydwyTupWSSJ5z4dI5thq6ZTV2saMl9lbG1pJjd5nmPhOW8ddBsgF4O6i31ylo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miGED-00GXVn-3L
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 13:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=z83BEBMepikQKZaP7EwgKglGj7+Xl9d+0OspVk4dFzg=; b=L4/mKn8kutBEl0TkUQJ6klzqsR
 qLPAy5ZFYF3BO83gwwJmwULBp+Q9KJL7eUjjz9niSU/Kx2FoHaQQyz3wAv9aoOwRIC5MlhtOI53Wg
 Bml8n9+v0exM+gHGB6surId2PyAY+bjT7Urkd+4DSWGAxCHtN0qmFc8kZKmH5mBIyJm8LnUX8uv5M
 qkGgWMP8CxZtf3mAjlCqC4+XT2CADd17BtoHE5OP6og3XM0iKsRCRRwybK/G/RxoTOwY5M6R/i3oi
 /e6KirRaXVvvsJxSX6zm3lEi6xYqN2IGYM5POKKxd5LfgDMSq0S8uEFElxfvBIALagP4KkypLu889
 CmGxnfIQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1miG7U-005DZJ-PP; Wed, 03 Nov 2021 13:16:32 +0000
Date: Wed, 3 Nov 2021 13:16:00 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YYKLkBwQdtn4ja+i@casper.infradead.org>
References: <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
 <163584184628.4023316.9386282630968981869.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163584184628.4023316.9386282630968981869.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 02, 2021 at 08:30:46AM +0000,
 David Howells wrote:
 > Add a convenience function, folio_inode() that will get the host inode
 from > a folio's mapping. I'm not opposed, but it only saves two characters,
 so I'm not entirely sure it justifies its existance. On the other hand,
 folio_inode() is clear about what it does. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1miGED-00GXVn-3L
Subject: Re: [V9fs-developer] [PATCH v3 4/6] folio: Add a function to get
 the host inode for a folio
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
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Nov 02, 2021 at 08:30:46AM +0000, David Howells wrote:
> Add a convenience function, folio_inode() that will get the host inode from
> a folio's mapping.

I'm not opposed, but it only saves two characters, so I'm not entirely
sure it justifies its existance.  On the other hand, folio_inode() is
clear about what it does.

> + * For folios which are in the page cache, return the inode that is hosting
> + * this folio belongs to.

This looks like an editing mistake.  Either you meant
'return the inode that hosts this folio' or
'return the inode this folio belongs to'
(and i prefer the second).

With that grammo fixed,

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
