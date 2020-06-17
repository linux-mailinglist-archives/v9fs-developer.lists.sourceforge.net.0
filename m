Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B9D1FD57D
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Jun 2020 21:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W/5Jsut2ku0JoRLz+An2+zw57b+P3eTjP4ZXIm9EsSQ=; b=KzNIkZEY17lglPEL+Yvr6wV4Ip
	ll5zFP0Vqp5HQ+S6JN7bwAavsgHtve4K68BYWuRppG7Rnq9IDgFvZsTqsA/5O15kMVHwItc+BjnF/
	EcuNoCpKDXrv+0hiBCVG5eIzGpMwLZNelDwDYib7A5UFtKOEuTm6RH3FtC2nh/YXQf28=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jldtW-0006WY-8j; Wed, 17 Jun 2020 19:38:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@delivers-solutions.com>) id 1jldtU-0006WR-U7
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Jun 2020 19:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nD2LXSFydu4gppR4zy4e9/bxCcFzCCQc/XbshKt3nVk=; b=OK9mbKPzQo006K+Ct/Dt/IzqzF
 CqykC5lC6lhbY2ylzmhwh7Rz5ON8KFez6L8Umhs6VewkGnHGqR26suieiWaymuphM+Q+e3QJ3A6yD
 +IuKHPTTqOG5I4QSiPlxm/DZfX8eha0fumyJPYOdTebd7Pi/PETCqVl5jFkNrASzgEKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nD2LXSFydu4gppR4zy4e9/bxCcFzCCQc/XbshKt3nVk=; b=X
 UkPt4aokbaMhqos7nCPcC1B7Lh75X61+cJViNrG1IFE/sgdnp6x5N6oBc7U5Pg4tAyPJvclEUAVYn
 MM5k5Uf3sY8wdUE4h0/3GkSYVXybopkhRtc73bUcMtLqYlglPb5RgigZ9aN5ramJes9kZ4sbD/Syl
 Bwc0tPBIOfx5Zyg8=;
Received: from rdns2.delivers-solutions.com ([147.135.99.14])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jldtT-009kVX-OW
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Jun 2020 19:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=info@delivers-solutions.com; 
 bh=HfOzYHtXihvNe2PYgpNWZYop7xo=;
 b=Vtdro1G72YJ0S/T8oK6TVqhNsuOZiSOGCu2ymnNXnmY93B8llbWrafUa8BZzUlFaXfwBZL9T/KuM
 LSLREcPf4cZeDSryu5j2GksCVNaZrlXu86ItBmv2JLeUkt+dbo6zzFKgeBjztZC3CiDnOYvhG8eH
 s+DRO5AR/q2QgUORsOw=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=WCOBTHQcIFb2YWydhqI9lCI7FyYSXf8q23QrYXpC2YYQye1PEBTXRyTYOON0PI0u118v008KxEM3
 /WQu/9+gJbIosJPh8TyBU1cj4e/RErRgQrPNMEIYFcUNxeeKKgpcKmzhDKzHef54hbTuqGzQS3TD
 o8UH3BGyO72GpQrxwMU=;
To: v9fs-developer@lists.sourceforge.net
Date: 17 Jun 2020 21:38:35 +0200
Message-ID: <20200617213835.E6A38199F007E10F@delivers-solutions.com>
MIME-Version: 1.0
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jldtT-009kVX-OW
Subject: [V9fs-developer] Receipt For Goods Available
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
From: info--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: info@cocyflame.de
Cc: info@delivers-solutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi

Hope this mail finds you well.

Our company have not bought your products before but due to 
excess demand of it here, so we decided to go for it.

I still have other request to make but there all in my 
specification.

Please let me know if you still have stocks available.


Waiting for your reply

 



Warmest Regards,

Angela Wilpert

Sales Executives Dept

HDT Sales & Merkating
vasileos konstantinou 89 Paphos, Paphos, Cyprus
Phone: +357 26 040001



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
