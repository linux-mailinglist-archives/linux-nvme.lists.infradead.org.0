Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF5F1C68DF
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 08:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6MNIOMPLpL+2QN9Vlb8Ypj4WloqN416+XyXQEV7ZMw=; b=Bq4tWQfetjVo3q
	5EZ1eC0r+EBH/GcBOSOXEF7Hw04jr+9mUy+71x2qJf9rf9LQTZLBSOVIJjFWxjTXuBJBBQn/v6Wax
	Uxz71mu8RZARc/ux039pNXOdTEqenajGKOtNrttn1jNTBNlCnvVyRIuux9/xPflLeIJ42lO350Xss
	VVR8fFbBS3RO3XrbIwcnJoUbos0Urxsr15qy+d5RH+Hc6YzPcTk7xqlDAis+Lq3vtuO53DdzncKLg
	esDnm3lcrcA6pF5RjhA8wnzdYUdijQce+gB3oTBtN6+QA1XOnJ5Z/7IX18xvTVt/mfQyy/U8xo1Ts
	G4SxlugQyPPhmS7E1IMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDWL-0001Le-RO; Wed, 06 May 2020 06:27:05 +0000
Received: from smtp.cryptz.com ([24.229.7.147])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW4AE-0005Nt-2a
 for linux-nvme@lists.infradead.org; Tue, 05 May 2020 20:27:39 +0000
X-Spam-Status: No
DKIM-Filter: OpenDKIM Filter v2.11.0 SMTP.Cryptz.com 49Grdq1j6PzGsLQf
X-AllBits-MailScanner-eFa-Watermark: 1589314701.6051@xI6y3ax+/iTWonaPWI8TwQ
X-AllBits-MailScanner-eFa-From: galbitz@all-bits.com
X-AllBits-MailScanner-eFa: Found to be clean
X-AllBits-MailScanner-eFa-ID: 49GrdR3Wf0zGsLQf
X-AllBits-MailScanner-eFa-Information: Please contact cryptz@cryptz.com for
 more information
Received: from Mail.Cryptz.Com ([10.10.10.19] [10.10.10.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (no client certificate requested)
 by SMTP.Cryptz.com (MailScanner Milter) with SMTP id 49GrdR3Wf0zGsLQf
 for <linux-nvme@lists.infradead.org>; Tue,  5 May 2020 16:18:20 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 SMTP.Cryptz.com 49GrdR3Wf0zGsLQf
Authentication-Results: SMTP.Cryptz.com;
 dmarc=none (p=none dis=none) header.from=All-Bits.com
Authentication-Results: SMTP.Cryptz.com;
 spf=fail smtp.mailfrom=GAlbitz@All-Bits.com
DKIM-Filter: OpenDKIM Filter v2.11.0 SMTP.Cryptz.com 49GrdR3Wf0zGsLQf
Received: from FROST.PSC.Net (10.10.10.18) by GLAZE.PSC.Net (10.10.10.19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.595.3; Tue, 5 May 2020
 16:18:18 -0400
Received: from FROST.PSC.Net ([fe80::4988:c04c:dcc6:f34f]) by FROST.PSC.Net
 ([fe80::4988:c04c:dcc6:f34f%15]) with mapi id 15.02.0595.003; Tue, 5 May 2020
 16:18:18 -0400
From: Grant Albitz <GAlbitz@All-Bits.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: NVMET Target with esxi 7
Thread-Topic: NVMET Target with esxi 7
Thread-Index: AQHWH72r2sq5DQXIv0Kj735jydy+waiTitUA//++XSqABquJ8A==
Date: Tue, 5 May 2020 20:18:18 +0000
Message-ID: <f9460444e88440c280df5c277383dd73@All-Bits.com>
References: <a28d8b24ece54f8db6e21c78f0bb5aab@All-Bits.com>,
 <711adc2d-dda7-d58f-0884-2c6578e6c333@mellanox.com>
 <4ae82f486cac431caa6928e56fe5e452@All-Bits.com>
In-Reply-To: <4ae82f486cac431caa6928e56fe5e452@All-Bits.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.21]
MIME-Version: 1.0
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_132738_205152_170F419D 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Mailman-Approved-At: Tue, 05 May 2020 23:27:03 -0700
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

 Hello,

I was trying to configure vmware to connect to nvmet based target. I did not have much luck. VMwares official stance is a very small vendor list. I did see the recent additions such as metadata info. I was curious if anyone developing nvmet was willing/able to test nvmet as a datastore target for vmware to possibly add this functionality. At the moment I am not sure if there are a large number of reasons its not working or a very small check.



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
