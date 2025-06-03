Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AD9ACC68B
	for <lists+v9fs-developer@lfdr.de>; Tue,  3 Jun 2025 14:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Date:To:From:Message-ID:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tEZ8sJSxCgu6tEZnVXVDOetfavnZtbKsO+oZATQLNNY=; b=XyIZxr6AZ2Uwj/jutey6aNLWpF
	mavJCz7FfHuNA6n9kdygoAZTWz//D9ijmGFIzmu3WvIRmSo+rntvmUIZPkw4wL5rIwtPBJVpNammC
	WzMF3ndVIv7jqUeMAj0LotdXxoIYC/WwuN0H3wUA0+Egfd54mr/PVD2xrq0I0WVLmwZ0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uMQjN-0001AK-GF;
	Tue, 03 Jun 2025 12:27:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <stevrobert2001@gmail.com>) id 1uMQjM-0001A9-O5
 for v9fs-developer@lists.sourceforge.net;
 Tue, 03 Jun 2025 12:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:
 From:Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=25hgYzXRfTCtvG0jTD4RGUT5amXSALf7PaI+VQA1Wvg=; b=Q6poYSBRlPYC+AzO4TPq/ob5K/
 6db4wkgPVelR82FgY34qmu5+cfb8OXLtu5oNQUKJ8E0fZcwgBuldmcItko8iOqAUfSaTfinpKn0Bm
 U1BC+9BwQjeYxCalDTsGOugc1Pgi2QBR0tCPj7MbJVJi/hsDKmg7URpx61IbTBf/ReKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:From:Message-ID:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=25hgYzXRfTCtvG0jTD4RGUT5amXSALf7PaI+VQA1Wvg=; b=e
 JoX/DnayyiWxv1MyUXVC1japB46ACG8ZvlWLkXlj5I94ApMblkbqpyp4u1gflWGAgKQ2a92raAnDI
 8pIhOud1MKZCKi5BR4l/zcfOGH3rHAk3ZQsbV17kCAM240uviA+3pLASSEHfwZrcQozWYHY6YCBYt
 s+jmj9g7dwReqmxQ=;
Received: from [196.251.92.81] (helo=216.105.38.6)
 by sfi-mx-2.v28.lw.sourceforge.com with smtp (Exim 4.95)
 id 1uMQjM-0007Jl-Bj for v9fs-developer@lists.sourceforge.net;
 Tue, 03 Jun 2025 12:27:00 +0000
Received: from [95.109.130.5] by 216.105.38.6 id zlje33kh15L9
 for <v9fs-developer@lists.sourceforge.net>; Tue, 03 Jun 2025 06:27:00 -0700
Message-ID: <500cc$d$-0$9od-$wrr68cgt$r$484y@ae0.mica016>
From: "Mr Steven Robert " <stevrobert2001@gmail.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Tue, 03 Jun 25 06:27:00 GMT
X-Mailer: Microsoft Outlook, Build 10.0.2616
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Helo-Check: bad, Forged Our Address (216.105.38.6)
X-Headers-End: 1uMQjM-0007Jl-Bj
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Urgent Proposal
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Mr Steven Robert  <stevrobert2001@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I got your contact while looking for a reliable, honest and a trustworthy person to entrust this huge transfer project with. My name is Mr Steven Robert, I am the manager of the Lloyds Bank George white street Bristol England. I am a British, married with two kids. I am writing to solicit for your assistance in the transfer of funds valued at 6,750,000.00 (Six million seven hundred and fifty thousand pounds sterling.) This fund is the excess of what my branch in which I am the Manager made as profit during the last annual audition. I have already submitted an approved end of the year report for the year to my head office in London and they will never know of this excess.

As the manager of the bank I cannot be directly connected to this fund, so this prompted me to contact you for us to work for the mutual benefits of both of us. I want you to assist in receiving this fund into your bank account for us meanwhile you will have 40% of the total fund. Note that there is practically no risks involved as it is going to be bank to bank transfer. All I need from you is to stand as the original depositor of this fund who made the deposit with our branch so that my Head office can order the transfer to your designated bank account over there in your country.
If you accept to work with me, I will appreciate it so much. As soon as I receive your response.


Regards,
Mr Steven Robert,

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
