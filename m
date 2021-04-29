Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EB236F213
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Apr 2021 23:30:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lcEEd-0007hs-6N; Thu, 29 Apr 2021 21:30:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <bounces+19152951-1568-v9fs-developer=lists.sourceforge.net@em5045.allready-security.nl>)
 id 1lcEEa-0007hl-NT
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 21:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:
 MIME-Version:Message-ID:From:Date:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9giv8uSp+9JUCpuEwp/UD4k3d5edHTHFjdiDAtadDA=; b=YivRB9Ogho2jDukvk17vD8Hba+
 aIED3o2uTnxLKktUME6KrB5N6EVuXVMG3MQT4dE0oERg5Cds/UdY/LMg9f4dfFzpYIU8CT/LIBRt+
 +5MCtjZI4xNPbPBpIKly1WywnoUAthglewDHoVhJ70WZ7DSUqBQk/6W1f6IKUvggsk1k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:MIME-Version:Message-ID:From:
 Date:Subject:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=W9giv8uSp+9JUCpuEwp/UD4k3d5edHTHFjdiDAtadDA=; b=T
 /efTbY+m2q21YvD+lp8JHpVh0A6nBdcA9vwsJ8TX5aUNQxOMlUa4fc1p8+xiTxsdCGo0jshN5IM1q
 /Y0FLPIRTEyLXI1K71fJ5VFcdNxpQ3+/2RLM2jNKat9ZUDSdU3dr0I/bV6carOGWnBoMPXw6aNr8V
 OxcwSR89PphfjaSI=;
Received: from wrqvqtnc.outbound-mail.sendgrid.net ([149.72.71.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lcEEV-00AOLD-G9
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 21:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=allready-security.nl; 
 h=subject:from:mime-version:to:content-type:content-transfer-encoding; 
 s=s1; bh=W9giv8uSp+9JUCpuEwp/UD4k3d5edHTHFjdiDAtadDA=;
 b=Xnrs+umKM+gZSWVr1480FOE+IWRPynEfCUHE71/0eDTZPyFGOl4Ir6qncXAJtnRbdJ73
 appC746q4xwbe6l+K7tGdA+8aGcM9q9cJBH+Hz7isOQ/y6JLZQhgq/7/bki9urnsFiyQNK
 8zmiDJ74Yt7NEcONY9+iZ4yMRjOwXfvqM=
Received: by filterdrecv-6bd97c8c5f-knpmj with SMTP id
 filterdrecv-6bd97c8c5f-knpmj-1-608B2555-40
 2021-04-29 21:29:57.593690151 +0000 UTC m=+87054.252786835
Received: from eu01.centra365.com (unknown) by geopod-ismtpd-5-1 (SG)
 with ESMTP id 33JvOE9LRamTALAfJZxcAQ
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 29 Apr 2021 21:29:57.418 +0000 (UTC)
Received: from allready by eu01.centra365.com with local (Exim 4.94)
 (envelope-from <support@allready-security.nl>) id 1lcEEP-0007Ef-4P
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 23:29:57 +0200
X-PHP-Script: allready-security.nl/wp-content/uploads/kaswara/fonts_icon/ali/leafmailer2.8.php
 for 196.70.182.66
X-PHP-Originating-Script: 1001:leafmailer2.8.php
Date: Thu, 29 Apr 2021 21:29:57 +0000 (UTC)
From: Coinbase <support@allready-security.nl>
Message-ID: <1085f1b0bc24892edfb6fb485896e69a@allready-security.nl>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?m2JaMFeS6jKCn0EdZIN8fXuf=2FliecOinSGsFlUteECKL3SsKxL+WlGsQXplEZd?=
 =?us-ascii?Q?LIOGh686aHEReW9hcHfzS3U9wfCDIUOZG9Aly4k?=
 =?us-ascii?Q?AyAQ0Aw4WLzssud9r0F2=2FEC2w3WreYoq4u6=2F8Rs?=
 =?us-ascii?Q?wjohiIEqDwN6C7D0IfIhgymJmmtTMzXIXzLbZT3?=
 =?us-ascii?Q?nhtC14jn7d4Ii24HE2ooQmZDw+xhFSRpvbBKjXy?=
 =?us-ascii?Q?x910BQwU7+tXB0pw18ZuRMHp5rzKSePdvUybRrC?=
 =?us-ascii?Q?6wanguQSXbhwU5RF8dVqA=3D=3D?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: Mxo2E8w4Fs+l8QJwIVv3LA==
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: u19152951.ct.sendgrid.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.6 PHP_SCRIPT             Sent by PHP script
 1.1 SENDGRID_REDIR         Redirect URI via Sendgrid
 1.2 ACCT_PHISHING_MANY     Phishing for account information
X-Headers-End: 1lcEEV-00AOLD-G9
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] We've noticed some unusual activity
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


  =

  Support Coinbase




  =

  =

      Coinbase makes cryptocurrency easy!
  =


  =

    =

      =

        =

          =

            =

            =

              =

                =


                =

                  =

                    =

                      =

                        =

                      =

                    =

                  =

                =


                =

                  =

                    =

                      =

                      =

                        =

                      =

                      =

                        =


                          =

  =


    =

      =

        unauthorized access or activity has occurred.


      =

    =

    =

      =

    =


      =

        =

          =

            =

          =

        =

      =


    =


  =






    =

      =

        Because We were recently detected an unauthorized access or activit=
y has occurred on your coinbase account, we have restricted your ability to=
 buy, sell, and receive funds on Coinbase. You can follow the link below to=
 verify your identity and remove the account restriction befor any limitati=
on.


      =

    =


      =

        If you do not verify your identity and have any funds remaining in =
your Coinbase account, please Verify your identity immediately to avoid for=
feiture to your country or state of residence.


      =

    =

    =

      =

        =

          Verify Now
        =

      =

    =


    =


  =






    =

      =

        =


            If this is a recurring issue, visit our Support Center for assi=
stance.
        =

      =

    =

  =



                        =

                      =

                      =

                        =

                      =

                    =

                  =

                =


                =

                =


                =

                  =

                    =

                      =

                        =A0
                      =

                      =

                        =

                          =

                            Terms of Service
                          =

                        =

                      =

                      =

                        =

                          =A9
                            Coinbase 2021
                          =

                        =

                      =

                      =

                        =A0
                      =

                    =

                  =

                =

                =

              =

            =

          =

        =

      =

    =

  =




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
