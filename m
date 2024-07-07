Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6C1929786
	for <lists+v9fs-developer@lfdr.de>; Sun,  7 Jul 2024 13:00:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sQPdL-0001ia-Uo;
	Sun, 07 Jul 2024 11:00:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <muhitdinov@unicon.uz>) id 1sQPdK-0001iU-C6
 for v9fs-developer@lists.sourceforge.net;
 Sun, 07 Jul 2024 11:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Content-Type:Sender:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tatsnb+3MQfN7es0O3kSAaMoO8gdEtiZUGnV0YYY9tk=; b=Y9pXfGi2Bq749YHtDym6/SvH2g
 P5LZIX9oDDHOd9ETONPO046PMLVQ6HN4rJFxfWnLev+3W5U7tIwdAtKMMN/58BEp81hAlS0vXZHa7
 SWbTUqBcXa5sJmJdycGlI62LEWnD7LlKNEd+qarLhPoB21TAZIjQ76kII5gpM8bHTmDQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Content-Type:Sender:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tatsnb+3MQfN7es0O3kSAaMoO8gdEtiZUGnV0YYY9tk=; b=lOymdVnOsNtb1uN0AZnyIO5Cw9
 obv8LUSw+P6ixUf1jaXhhVXVYTCbonimPRdzvhhkEFTcdzIBe+wBZ338nJI7zEGbCbJnGtHWvn8x+
 rkDDNfQmilwWr2shW6tcSiINS+JxCNXXLgem3+XjYzVtuhgJu50TWPGIjkzyYvLxNFGM=;
Received: from outbound-mail-1.croz.net ([80.253.163.146] helo=mail.croz.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sQPdJ-0003SO-J9 for v9fs-developer@lists.sourceforge.net;
 Sun, 07 Jul 2024 11:00:41 +0000
X-AuditID: 0a0009c8-ca74c24000002100-36-668a754eca0f
Received: from [103.195.236.30] (Unknown_Domain [103.195.236.30])
 (using TLS with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 by mail.croz.net (mail.croz.net) with SMTP id FD.D8.08448.E457A866;
 Sun,  7 Jul 2024 13:00:31 +0200 (CEST)
Message-ID: <FD.D8.08448.E457A866@mail.croz.net>
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "PRIVATE" <muhitdinov@unicon.uz>
Date: Sun, 07 Jul 2024 18:00:30 +0700
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFIsWRmVeSWpSXmKPExsWSfviNnK5/aVeawZzTshYf/65ic2D02L3g
 M1MAYxSXTUpqTmZZapG+XQJXxrs1H9gLNCrOt35ibWCU72Lk5JAQMJG4ce0jaxcjF4eQwGQm
 iQNHDzGDJJgF9CRuTJ3CBmLzChhIzNx6mQXCFpQ4OfMJC0SNtsSyha+B6jmAbDWJr10lIGFh
 AR6Jz8cmgpWICGhIPFy8iRHEZgMqOdCyhwnEZhFQlWj5+h5slRBQvHl5O9sERp5ZSDbPQrJt
 FpJtsxC2LWBkWcUoUJybrpeSW6WXXJRfpZeXWrKJERgoXAycJ3YwTnnodoiRiYPxEKMkB5OS
 KO9+0440Ib6k/JTKjMTijPii0pzU4kOMEhzMSiK8px+3pwnxpiRWVqUW5cOkpDlYlMR5nWMz
 0oQE0hNLUrNTUwtSi2CyMhwcShK8fAVdaUKCRanpqRVpmTklCGkmDk6Q4TxAwznygGp4iwsS
 c4sz0xHy/KcYjTk2L9y7l5nj67auA8xCLHn5ealS4ry/QeoFQOozSvPgRsJi+xWjOAejkjDv
 zCKgKh5gWoAbKtXAuGVSqYbIw9neoe0OH59NVgnXmFNxXsb8zIscyTxBrse65ssvBU2IzOha
 1pt0/dgVE4f2Kx2Gx6KUVfbzLVbuD8kojBRR0V3v+3Mdt9sDfXWexZkh1WeOGj0p9NZ4ttXm
 R9vl/b+SdCq6jv/d+3dDK8fHWxtV5opqT7d49uxq88ZXn3+emcxUrMRSnJFoqMVcVJwIAP7/
 kqatAgAA
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Can you do a private business with me? 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [privateidentity034[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [80.253.163.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [80.253.163.146 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.253.163.146 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1sQPdJ-0003SO-J9
Subject: Re: [V9fs-developer] (no subject)
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
Reply-To: privateidentity034@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Can you do a private business with me?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
