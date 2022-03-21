Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E67AC4E27D3
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Mar 2022 14:38:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nWIFE-00077k-4n; Mon, 21 Mar 2022 13:38:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ror.mcn@bookitevents.com>) id 1nWIFC-00077e-Gb
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Mar 2022 13:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V1iJXTnmd9GZroWugel7/WMzY9xAvpwR5pwEDee+W0M=; b=TeoFGklPWOIt0ehIgzAzRk3+k1
 af+Hqtp4nkzlVnsoj3mo2+mF5pxavMDNX/T+A/o2QAu/X0AvK90zCWYqqyF72/QV/yW0RnbQgeO/u
 BjC7pMeI0weUz1/TZGA8k+6+1ddId1YU3swUg5aZuvbMshdiUnwFY4Qq2nxiqog1/N6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V1iJXTnmd9GZroWugel7/WMzY9xAvpwR5pwEDee+W0M=; b=Y
 V7O8c9rDueK9z+A1k4SU0e46BGU3yCKEw376LM6aeQCWjGq+vYSuFtGSCnEQqYenAsPyFBVH5Ju3z
 DboIWHKse8uq4FL6egzLcpBgBkgjkFiRl+YSzK29yX9KauKlEvf9nRadU3gB+/ybtteR651JkNK45
 ATiDX5SF/yyGtO+0=;
Received: from domination.bookitevents.com ([185.102.170.218])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nWIFA-0068wF-CJ
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Mar 2022 13:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=bookitevents.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ror.mcn@bookitevents.com; bh=lhhJsIb8wliQltwIaQ/pQ+yxZss=;
 b=iFGpL8qNwZTzX7b9jCbiOOUum0wkflCLWclc16suAAXARRJOEUkserS+npqcxKmycqsIC+4CzkVm
 oUlVIm/tDDi72cofKe7jCr3TfuzDsDGxCYih3IDv6PhUVNj1b8ltWLhSqrs4NwkIXXyLH6cS3eDr
 zdPk9tZ+fVvKMNrx6zxxRVdm/q8frlXYSmOBjk+v+nqQ0BOsRV9UZLBbL7rOWZSzT1rK324DhYPg
 ZwzaPCbprXEvThLzYAn149C9Q9yz/WPf4myXIZQfELWjOIE+D3HJ+ORW1+l0xziRJ0VpmQLYAPQl
 E5HTQ1aD629W3+YnJ9iivLbwjZPVQipMqTtgTQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=bookitevents.com;
 b=odze/NbfHzVcF3D8o0tedPj+SEwTLeNNKCinzvi6XaUdGSzWIsKH3/Ykz3AnmT+1RDVWmHWztMZs
 GEGzbR/R+Iin6BHIdm7dp/jBDjL7VHNej8w/IQVxGlKdT+7aseiO8v7VPyDk10pVel0XSZapLkIW
 UkWGpHcD9YEsXDhM6WFD8yBf4TSyWDQyZTeC1lkyx4rp2NUFSESXKyvOUm0doEpZ0C4reqXQ5f0B
 lY6rerXgcdPMyeQgu2UAN+a46AUsePw7Tplj5t8H/Q7F//A56Bt0/RTEQ13yadxypxL1oVDEmzyB
 oD8WJjoiWZBiFWDIdj3FQSKc91dTUI/xMPzWMw==;
From: Mustafa Ayvaz <ror.mcn@bookitevents.com>
To: v9fs-developer@lists.sourceforge.net
Date: 21 Mar 2022 14:38:24 +0100
Message-ID: <20220321143824.097C968DDA748414@bookitevents.com>
MIME-Version: 1.0
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Lieb v9fs-developer, Grüße Ich habe Ihren Kontakt bekommen,
    als ich nach einem Verwandten meines verstorbenen Klienten Herrn Robert gesucht
    habe, der aufgrund der Coronavirus-Krankheit sein Leben verloren hat, die
    er während s [...] 
 
 Content analysis details:   (7.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [185.102.170.218 listed in dnsbl-1.uceprotect.net]
  3.0 REPTO_419_FRAUD_GM     Reply-To is known advance fee fraud collector
                              mailbox
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
             [Blocked - see <https://www.spamcop.net/bl.shtml?185.102.170.218>]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit
                             [tomander231[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
                             [185.102.170.218 listed in bl.mailspike.net]
  0.0 LOTS_OF_MONEY          Huge... sums of money
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
  0.0 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
                             email?
X-Headers-End: 1nWIFA-0068wF-CJ
Subject: [V9fs-developer] Aufmerksamkeit:
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
Reply-To: tomander231@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CkxpZWIgdjlmcy1kZXZlbG9wZXIsCgpHcsO8w59lCgpJY2ggaGFiZSBJaHJlbiBLb250YWt0IGJl
a29tbWVuLCBhbHMgaWNoIG5hY2ggZWluZW0gVmVyd2FuZHRlbiAKbWVpbmVzIHZlcnN0b3JiZW5l
biBLbGllbnRlbiBIZXJybiBSb2JlcnQgZ2VzdWNodCBoYWJlLCBkZXIgCmF1ZmdydW5kIGRlciBD
b3JvbmF2aXJ1cy1LcmFua2hlaXQgc2VpbiBMZWJlbiB2ZXJsb3JlbiBoYXQsIGRpZSAKZXIgd8Ok
aHJlbmQgc2VpbmVyIEdlc2Now6RmdHNyZWlzZSBpbiBDaGluYSBrb250YWt0aWVydCBoYXQuIElj
aCAKYmluIHNlaW4gcGVyc8O2bmxpY2hlciBBbndhbHQgdW5kIHN1Y2hlIG5hY2ggc2VpbmVtIE7D
pGNoc3RlbiAKQW5nZWjDtnJpZ2VuLiBCaXR0ZSBhcmJlaXRlbiBTaWUgbWl0IG1pciB6dXNhbW1l
biwgdW0gZGllIArDnGJlcndlaXN1bmcgZWluZXMgRm9uZHMgenUgc2ljaGVybiwgVmllciBNaWxs
aW9uZW4gClZpZXJodW5kZXJ0endhbnppZ3RhdXNlbmQgRG9sbGFyLCBkaWUgZXIgenVyw7xja2dl
bGFzc2VuIGhhdC4gCgpCaXR0ZSBrb250YWt0aWVyZW4gU2llIG1pY2ggc29mb3J0IGbDvHIgd2Vp
dGVyZSBJbmZvcm1hdGlvbmVuLgoKR3LDvMOfZQpNdXN0YWZhIEF5dmF6LgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
