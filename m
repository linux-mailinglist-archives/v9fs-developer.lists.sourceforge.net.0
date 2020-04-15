Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C766A1A90A9
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Apr 2020 03:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xR4G6rUMD9WugAIv3O5aNsvsn/VMZGPJtJ7KkBsZdEA=; b=BQDhpQMEozXjef0DpbHzRolN+b
	yk9hyx2QUTWebvMXjCA1uYcygLJ+cd2Lekdhlku18k/DbjD1mKZ4usO9hTsVOXbi20N4Dvt03DYdd
	DppE8mEq5BHepQ831qyYZZru2USE65JoqMOaOVgjgPCkZ01AX7lnhqYJAqWLy/VfyGkc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jOXFg-0002V5-8b; Wed, 15 Apr 2020 01:54:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@hident.org>) id 1jOXFf-0002Ux-8u
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Apr 2020 01:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nwHDQdO+WE7v9wqoSs32XrkmHhjXhkhMAGzPVL1LAKg=; b=X/MhcAi0KtWCjfNkTa5JFlBJKj
 tuxdn23hjX30kxIj+ykJq66wECE5DosF95L7nVbLuHKqAQP9QOEpXMiSaA8SPvQbLcCf6ze8hi4Y1
 9TueQSVCPTAbM6KRnD4KaRNMOyFd6gX4sIELtctBSXZUA2ZWqAzipiol921q/6mzYtbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nwHDQdO+WE7v9wqoSs32XrkmHhjXhkhMAGzPVL1LAKg=; b=d
 JMJXcqhehJth4woXzfPJbf8SvxkN5On4j8uep1YqtcoKgMM6WONT4pbsDkdQmq34K90RO0cFlFU9H
 hnoyXKyYVGZIofAVJSwI08b+EU359B76t5J2tfdTpoFQKFkskWmVKO7kID3DuzQUJLaSuEiwCln9g
 Nhd3pWjL+eXNOMXc=;
Received: from box.hident.org ([216.108.228.54])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jOXFc-00FRPV-Cg
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Apr 2020 01:54:07 +0000
Received: from authenticated-user (box.hident.org [216.108.228.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by box.hident.org (Postfix) with ESMTPSA id 281534A761
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 15 Apr 2020 02:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hident.org; s=mail;
 t=1586911682; bh=8y+KVGQcsjWc8pIRP7uHj42fXtN+KBXBZprrukttL4g=;
 h=From:Subject:To:Reply-To:Date:From;
 b=ao7zgnsboiVWOIKkf92wJ6yAtN6Cwu+13LhRrfDn190kTruXdm6fjqMJj/RgXkX6a
 O0KSagoF6jrSNPqGzwPEI1xAtOMjr2Jv4cseKy1ByI3gvU85ezAnst3H2MUhxqMuFZ
 ubj9hZUgmjxbmePGrl3frMOaUkYtzDa8C4h5Nvu2/iWp/yOi4g5fSx4ybHKbhw8FSp
 nWjeg9NkckFKzkIz5ABwjKiznDn4e7K7s1dN73WpUr7O3F2nBkL8EwyUJRYdIETGzn
 rgBP0TKsOUKCsIG80fSVdcdN52lYZ9i38aIAWaYLTGTlu0UcWZpnM+NKbQagMIy8Fv
 GwHuUlq3vCX/g==
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 14 Apr 2020 17:48:29 -0700
Priority: urgent
X-Priority: 1
Importance: high
Message-Id: <142920200448170FA93D4CD8$CF75079CB6@WINRVRAQDHB>
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kochind.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_LOAN  Answer loan question(s)
X-Headers-End: 1jOXFc-00FRPV-Cg
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] OUR COMPANY (KOCH INDUSTRIES INC) NEED A FAITHFUL
 AGENT IN CHINA OR HONG KONG
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
From: Sylvia Donald via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: danielray@kochindustriesllc.com
Cc: Sylvia Donald <info@hident.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Dear Sir/Madam,
This is Sylvia Donald from och industries Inc. USA, We are a Multicompany, we are involved in a variety of industries such as refining, chemicals and biofuels; forest and consumer products; fertilizers; polymers and fibers; process and pollution control equipment and technologies; electronics; information systems; minerals; energy; glass; and marketing and distribution of all kind goods/products for many companies in the world here in USA. We got your contact from a trading site and we are so sorry to write you directly this way. Please understand
We are looking for an agent in China who will be helping us in processing payment to our personal supplier in China who handles any purchases from us or our partners.we would like to know if you are interested to work for us and get paid of 5% commission from any payment you receive from us or our partners in USD and process to our suppliers personal chinese account in RMB. We are looking for an agent because our personal supplier only has Chinese personal account and he can not receive payment from us or our partners in USD. So we need someone who can receive payment in USD from us or our partners and pay to our supplier chinese personal account in RMB.
Note: All you need to do is to receive payment from us or our partners in USD and pay to our supplier chinese personal account in RMB.
IF YOU ARE INTERESTED TO WORK FOR US. KINDLY FILL OUR COMPANY EMPLOYMENT FORM BELOW.
Full Names:-----------------
House Address:-----------------
Company Address:--------------
City:-----------------
Phone Number:-----------------
Country: -----------------
Occupation: -----------------
Age: -----------------
Company website-----------
Company USD account---------
Whatsapp & Wechat ID-------------
Gender---------------
NOTE: PLEASE CONTACT OUR GENERAL MANAGER THROUGH HIS EMAIL,WECHAT OR WHATSAPP DETAILS BELOW FOR YOUR AGREEMENT LETTER BETWEEN US AND YOU.

Mr Daniel Ray/General Manager.
Whatsapp: +19138280252
Wechat:+15189309872
Email: danielray@kochindustriesllc.com/danielray716@gmail.com
(Koch industries Inc. USA)
website: www.kochind.com

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
