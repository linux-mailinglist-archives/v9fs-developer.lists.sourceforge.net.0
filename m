Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E800A9FD13
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Aug 2019 10:30:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i2tLs-0002cj-Mc; Wed, 28 Aug 2019 08:30:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <inquiry@techbuyakksks.ml>) id 1i2tLr-0002cF-EH
 for v9fs-developer@lists.sourceforge.net; Wed, 28 Aug 2019 08:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Reply-To:Date:From:To:Subject:
 MIME-Version:Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9efTh5BYi1nxAq4PQMCbwsgFHpDh7U79GI89IJqCQlE=; b=FSLiHQwWZlbabsuKtUZiLkZx6P
 0k9XnHwLVsz8zXqnKqqanDlEpWgd8HChmLgIjPUZSXuUu/BFZr9ZH5aMPtAE82xT223O+BGxDWL4N
 kY+CLQ9IWBWHYx27V9V/Ar7TC7YogNq6UrvZuR1huQZ8r8dsyiKS8G3hP9LtzYiTH//o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9efTh5BYi1nxAq4PQMCbwsgFHpDh7U79GI89IJqCQlE=; b=E
 AzeEEzogWho0bofa6s7uEmj0GKbL42xNEZv/SWjEDYHG1+y9gnxlDYTzc0HJ9hlKEDzWg/9e9lLYq
 Il6HSnC1uyc24SRubty45Ffs3L5J+s/86lTw7AEbhZCjWPKz9RTg3vnIRC7jd5M089TcY20q7damv
 eoiw7Qu8C8nJFbis=;
Received: from [178.156.202.136] (helo=slot0.techbuyakksks.ml)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i2tLq-001B2s-7y
 for v9fs-developer@lists.sourceforge.net; Wed, 28 Aug 2019 08:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=techbuyakksks.ml;
 h=Content-Type:MIME-Version:Subject:To:From:Date:Reply-To:Message-ID;
 i=inquiry@techbuyakksks.ml; bh=KvpIM5xUOCI5t9u9cxgy9zGQZkg=;
 b=gxDVGQGvKzVUs43gkU5YOvnrsXMFc6GEAadKEPxOllKVdURJwZPp/uSew6fkOelD5mIM9AfeRXLG
 +nLrVbvilX6Dyli7A1CyRuLr5U+W0rKq/wFSp9EPIMKOpCkdDeA95s8bIovOsTyFaoo60hrtKZCD
 B1xjk2thbgxMFhajyknnBJnquX3QyCE9NNMNARWBF5Wustd9MmqWVDkRkYUbegjkxyLCBGwT1gm+
 Hja1n8IMlcGccj4nbanMpgGflj/FI3WABBXqxHPdS0i0HrtYrvdJvEK4v1x61h2+Ch6syy23ei6v
 QnlV05Uk1gtM6bny/mANOmf8XTgA4VLVkMUV7g==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=techbuyakksks.ml;
 b=EuapO8AJWa12dmY5Dy+XF8B4rfwU6E3My2sayksVmcdmT9ZK3Ji39LkkpG/Ul3+1Jd/42PNJyc6e
 Ddbv3bT6ubsLp35qK/fs63rN98TBKMKDuDUIOceBwrEGoAFTKdz+M4zym/2XrS6OeXUPaGSKMslL
 wEHadCRGWQ4qd+yJRy+dig6G/kWmzIT1QefhhMnVRsnN+ZUxA2GVcyQn/vpY1riH8RZHZ4bu22jn
 7z147x6fFQnZFxfHqtomAMyMXmTqXTg2zTuzjZQ54nEIKYUFMw8GwnrwaK6VIpHNjKpsqltG+jaI
 iEmjRqEfQ7Iijp1/dzkgOJYMEJJ/F8Tkwn8W7Q==;
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: Demian Gray <inquiry@techbuyakksks.ml>
Date: Wed, 28 Aug 2019 11:30:38 +0300
Message-ID: <0.0.3.DC2.1D55D7AA47D0214.0@slot0.techbuyakksks.ml>
X-Spam-Score: 6.1 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1i2tLq-001B2s-7y
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] inquiry/Request for new order
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
Reply-To: demian.generaltrade@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Sir/madam,
 
I am Demian Gray from Global General Trade LLC.  We are interested in your products.
Please send me your products list/offer in FOB prices.
 
 Currency:  USD or EURO
 
I would appreciate it if you can send us your offer as soon as possible.
 
Awaiting your reply.
 
 
Best Regards,
Demian Gray | Sr. Manager - Marketing.
Global General Trade LLC
Dealers, Importers & Distributors.
Mobile Number: Phone: 1.941.227.2944
Fax: 1.941.827.3325
299 Express Lane
Sarasota, FL 34249 USA
E-Mail: demian.generaltrade@aol.com
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
