Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C14312E35B
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Jan 2020 08:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fyFkSjMHzV0XnaDUHj+UBc6ByXVjdSINvUqZsQU5w8=; b=FEyDWQLKAO+JW0
	c7NPOXuBFsXrnIGoB28jVL1NYHZtQioYP73gc3Fo1pMNp6Q3KqSo13EFGGq2/f5Wmj5Ddb9RMeE9J
	qE3prCfu/y16Y6aYrHBb/QgMkvv3hvSi6iKX1oadN4ZU0ofYgKQhW/Q8A99ak9OnwydWaxrAagyJI
	XDxjcvQODhmA0qfivC/y6YJOPDK0sBlafO5VeF6p6IjuX/60Ki/IpO/yEoonJaOx/j1Tl1bnC+Tyf
	4nVgVfzIICcNQao+jGfkfy6dWZtElTRDbF0r6semohtFZzMBqLJnxD7SoTCIKFU9l+VThE5uHSoCQ
	E+UhhF1OiniCAqHDSLAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imv21-000559-TY; Thu, 02 Jan 2020 07:36:33 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imv1v-00054P-6k
 for linux-nvme@lists.infradead.org; Thu, 02 Jan 2020 07:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1577950587; x=1609486587;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=k1Nzb8bZaT4m/b1dU7SsCqlqfBlTEdEx32bcxwJJuB0=;
 b=uxkTL+mD++d2zuluturDtnUd4fG15w4zThknB78bNX1RK5WCm9/AnmfC
 jFCfszBoKD0B1y54Pn7gZL/CEpAUIjRQdZzkBO9C4bCcXUqbU/8RDf/sR
 8bRzJMk4XUwMAhdTsUHogSOGlTaPLuSd5d8ummAue0KhR4zhlBMViDBby Y=;
IronPort-SDR: B7ksXLAadvey2WJTLpGdmppAdnrvityxtYbn3quHgmH0v4XzNhIkGz4jcZGHQWSNKWMeLazSrc
 hktCfvc8MsAw==
X-IronPort-AV: E=Sophos;i="5.69,385,1571702400"; 
   d="scan'208";a="9796547"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-98acfc19.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 02 Jan 2020 07:36:22 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1d-98acfc19.us-east-1.amazon.com (Postfix) with ESMTPS
 id 03347A2296; Thu,  2 Jan 2020 07:36:19 +0000 (UTC)
Received: from EX13D11UWB001.ant.amazon.com (10.43.161.53) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 2 Jan 2020 07:36:19 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB001.ant.amazon.com (10.43.161.53) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 2 Jan 2020 07:36:19 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Thu, 2 Jan 2020 07:36:18 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "=linux-block@vger.kernel.org" <=linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [RFC PATCH 1/5] block/genhd: Notify udev about capacity change
Thread-Topic: [RFC PATCH 1/5] block/genhd: Notify udev about capacity change
Thread-Index: AQHVuTIQS2D+6UASEUSut4lHWyy8r6fXDD6A
Date: Thu, 2 Jan 2020 07:36:18 +0000
Message-ID: <507d6d24a15b76c9887b1746db37f4dc970e7800.camel@amazon.com>
References: <20191223014056.17318-1-sblbir@amazon.com>
 <e452f6a638fe09f065b9e4cd1c25d5d3a2f29e5a.camel@amazon.com>
 <BYAPR04MB5749C2F13BD6F6C15509FE8586210@BYAPR04MB5749.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5749C2F13BD6F6C15509FE8586210@BYAPR04MB5749.namprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.109]
Content-ID: <8BEEDDC95109554EBF79E5898A7A2D17@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_233627_372825_75DD2BA8 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "hch@lst.de" <hch@lst.de>, "mst@redhat.com" <mst@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2020-01-01 at 03:26 +0000, Chaitanya Kulkarni wrote:
> On 12/22/19 5:53 PM, Singh, Balbir wrote:
> > I messed up with linux-block ML address, I can resend with the right
> > address
> > if needed. My apologies
> > 
> > Balbir Singh.
> 
> 
> Unless you have sent it already and I totally missed it,
> if you are planning to resend can you please also add a cover-letter ?

I did not resend it, I'll resend and add a cover letter.

Balbir Singh.
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
