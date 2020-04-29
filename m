Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEAB1BDA7A
	for <lists+linux-nvme@lfdr.de>; Wed, 29 Apr 2020 13:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gChvmKFW/Mm2bs7/HyyHshIiU8YpuTHmGnCGlgl55J4=; b=fWMwyouIKxeU0JIwq6EKAkNtp
	4vjEr+aac2BfEx8vn/2h+/pphIfaHUfTPygp6XX8lJYpqvx5fzuNBs29/U593L74WQXGl0gCWJMET
	Ou8qvpbp3K30jbUqX2Ygf6fjaaBjbk8TqTQZ9HS/ODPbSwGSii0XALPxvVpQB0jKY/PxDcgAECVDX
	uKSkrIXg8J8KFN6Tm8bprRivJ8mEgLVRlLi1Pdn7p7/lC28mLsNPtB+RqXmPnXgdlDPadaGvpNBfE
	H8K9Mr1TXnKxJ/2Ra5sOtxQTbiZUqnkomxUj3wYxBvk7ROAYNI5pZ8s0i4es9mTEZB7KYBAFq8XRI
	lN46j80pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTklN-0004E8-7E; Wed, 29 Apr 2020 11:20:25 +0000
Received: from mail-am6eur05on2066.outbound.protection.outlook.com
 ([40.107.22.66] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTklH-0004CQ-8c
 for linux-nvme@lists.infradead.org; Wed, 29 Apr 2020 11:20:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SUvROO/ZSekBZF+X3V7G0JIK2oUYM79hVbMy8cEZRB5XYooqfcLN+c5LUX7IFoeZaEsFYw+9hqrzUQv4ZspB9GNvoJg+BsL2z14P0qhnOBhI6eMYDrckatfsLhCGFZj1F4asaRsoo78ks0g0OVevAIzHNGTH+OolTrzCaOQPPZ/3b7MaV+L7AupYeb9nP0+o/j1nwX1DV4NjBXGgfdDhs1BcWh0i74qweJgfGi+WFEZCaccbulkjFcV5wQ/SgWdSfUWoMxEeF1Mo0zOJi6xmaR8k0FHEsdScPKIn59HVLYT44+3DWC+J1yiZz1xRkmlhv2dd9RX/wGpaF5d+T0bfOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LS7A+X6uBzHKCD/Q9gci88fDPGEcmXRdkyXzmJKHq2A=;
 b=iGjjJCY3bgoiucO9claPgmKiFfXxbE4XKUaGH6T0I8vYuhNUjozHz6Y6t/KVnni9XgCqYYyDRVvJcG0tyZPMzxJzOAaofCnz4ssgAdaYhSLEWzIc4bl7OeYwxBGpPLNQrRxiGOj75950Ri21V6//3HAmy5FSUMv7I53En5ELjwuAx0pzdrq9qeBtqQEq2as9+yhogjcIhgMMMeB4WilnWYH+CG+RZi/yfTSQJBQrdJLM/5+aE9qHvg8lD2B84nfflKMXlWPaE83II8hS2GM8P0RgcU9RdumbBEGsB8X2BduZrP5ctgBQU7/mXeqj6m5svNSgdwIFF4Y/shpmnAhDsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LS7A+X6uBzHKCD/Q9gci88fDPGEcmXRdkyXzmJKHq2A=;
 b=BYbzsELwoS3ryb9I+30FzyyAbPbIsvQqu7TSia5nwfNCCLdYQzFfpm9q/HWT92iZOM5jqHlw10IgYsrZMjTEYOJOH7DX+voUsQzRK/qXr6fs8X4DYVy3cvDesB6sBcfQR7WVthOnY7njbKLZiW0tOG+rCtSaTCdcqxFXgSxgG9I=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=mellanox.com;
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB6068.eurprd05.prod.outlook.com (2603:10a6:208:12c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 11:20:14 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4%5]) with mapi id 15.20.2958.020; Wed, 29 Apr 2020
 11:20:14 +0000
Subject: Re: [PATCH] nvmet: remove unused variable
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200425193909.7145-1-chaitanya.kulkarni@wdc.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <b71ee289-d130-a989-c07c-f25ba23ca7da@mellanox.com>
Date: Wed, 29 Apr 2020 14:18:52 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <20200425193909.7145-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-ClientProxiedBy: FR2P281CA0027.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::14) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (89.139.203.251) by
 FR2P281CA0027.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:14::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Wed, 29 Apr 2020 11:20:13 +0000
X-Originating-IP: [89.139.203.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 254787a7-d22a-4adc-99b2-08d7ec2f4996
X-MS-TrafficTypeDiagnostic: AM0PR05MB6068:
X-Microsoft-Antispam-PRVS: <AM0PR05MB606802640C305AE54C7B431AB6AD0@AM0PR05MB6068.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(376002)(346002)(396003)(16576012)(6486002)(2616005)(956004)(5660300002)(66476007)(66556008)(36756003)(26005)(31696002)(86362001)(316002)(478600001)(2906002)(31686004)(8676002)(52116002)(8936002)(6666004)(16526019)(53546011)(66946007)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U0XpgX+OQw/XqzwtpfKKqZOJaHC0BO6TvWmTuel04zeL6O6a4abeDtgkwqeogOvtCHCy+lxnQY+U46euEeeDqeNIKiMne/nK74iXsTjRD0ao2rDCDGQH5JMUr8fFIQ66toAvm39ptBgj/e8k0wt/eHMl28MhVSiFkJ2+pKK3WPz5nnM9wFkG3dzoM2SuCFyJawnhjHO3GRiiWfYdPSgD0zcp7+OBvlpp5sui8u26Z6eg82C0etwas9Hzkia0f8BPI+jfxQPdOi6xcq9D7TzqOMPJtcgLEbPqQXVPqR/w64emyVVAnt+2nvBCUIvnyQ//CvawOXPyHLVFmNLicCsHlxTYKzCa5otErhnmt72xjX7pksfGpLYaThjwa+eHBGk7CyWGnLgDX9GJMuNASn0tztlT6oMouc6xd2XEWzKuiJJsESbehgUc0Jo/o/cHT+QS
X-MS-Exchange-AntiSpam-MessageData: RP92yjAdIFoxaRNuL3GU80UlliLLjAgEdEoidrEgMfFH3YjBhRmsG+KYkb9Z1Mm4VAwZHU7Fqkuih0Zam1iXeswkIG1NNPvUksPm9k6MpvgcF39X30B7RQjN8IpEvMOZ5zzDyVSEPqmzmESJapfFIA7ynN7JNGZzaYQIJgDdiT/vb+0cSLLwC4Hc5WWqkHRzoNrU1mhN7vk5Kz7TN9aMcgz3t7fT+JE0WL1UhKd5l4NZ1RQW081Ttdl4eFdM/kYG9BYbrWWxGt/q/CEH+hx7wwFJtm9C6Fcw8reMgDT0Tz08xzQ8CiUmm93e6w1381hQIR/4D/i1I5E43UWS/iFjwErMQRpceoRIcgDoxSJlXPKMRie+gfWEhFzZPl4umDAGjtRLeOpxMTRinQzGppct1k0Eyth4EwtqRii4AfB3yuSebz4CvPez7yfW96T8dtfy2JD4pCFh95AtjhldNKsxEYW5z0shH5/BAWhcYwvSaXK/3j0LP8Lvk/uik66AXkkXxgWVUnJKKi+5dwQJaCbjHHCEh6704AErYuX2VpTsDG8wxtnfZkurgtG5QJ8N+LaUlMWx91Dt1gx8E8DkYPf3/0+i+NCi2YG0N2odZyfEwQI18vc4h3v26BtATozPH93YWpdB0T3Wl0Ch9O5xJLVEPbGpHFBhtaBh/9/BhRBHmeMei2bsFnmsR4O+CrHGwhTAbvVWdP4A78d7NrmAl3al3PiR1RmLD2JUc8vM0SBG9mKVP4nYeEJZIY1BStRve/ObKJU8q0c8U4KxKYlSRhd5pinpY+V6FLG5sbN73R5gmdg=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 254787a7-d22a-4adc-99b2-08d7ec2f4996
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 11:20:14.0707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1TcszetzxtNefwrqsX53ELY1q8kmtUq8EwwRCbV3mPCG0bPpE3Y2/xiiJJhzDlfPyZXQjsnDE6UVlXNSxbs1Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_042019_382613_D39437E6 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.66 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDQvMjUvMjAyMCAxMDozOSBQTSwgQ2hhaXRhbnlhIEt1bGthcm5pIHdyb3RlOgo+IG52bWV0
X2ZpbGVfbnNfZW5hYmxlKCkgbm93IHVzZXPCoG52bWV0X2ZpbGVfbnNfcmV2YWxpZGF0ZSgpIHRv
IHJlYWQKPiB0aGUgc2l6ZSBvZiB0aGUgZmlsZS4gUmVtb3ZlIHZhcmlhYmxlIHN0YXQgd2hpY2gg
YWxzbyBmaXhlcyB0aGUKPiBmb2xsb3dpbmcgY29tcGlsYXRpb24gd2FybmluZzotCj4KPiBkcml2
ZXJzL252bWUvL3RhcmdldC9pby1jbWQtZmlsZS5jOiBJbiBmdW5jdGlvbiDigJhudm1ldF9maWxl
X25zX2VuYWJsZeKAmToKPiBkcml2ZXJzL252bWUvL3RhcmdldC9pby1jbWQtZmlsZS5jOjQ1OjE1
OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYc3RhdOKAmSBbLVd1bnVzZWQtdmFyaWFibGVd
Cj4gICAgc3RydWN0IGtzdGF0IHN0YXQ7Cj4KPiBTaWduZWQtb2ZmLWJ5OiBDaGFpdGFueWEgS3Vs
a2FybmkgPGNoYWl0YW55YS5rdWxrYXJuaUB3ZGMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9udm1l
L3RhcmdldC9pby1jbWQtZmlsZS5jIHwgMSAtCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlv
bigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvaW8tY21kLWZpbGUuYyBi
L2RyaXZlcnMvbnZtZS90YXJnZXQvaW8tY21kLWZpbGUuYwo+IGluZGV4IDhlY2U5Y2FiNTExNC4u
ZjBiZDA4ZDg2YWMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvaW8tY21kLWZp
bGUuYwo+ICsrKyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvaW8tY21kLWZpbGUuYwo+IEBAIC00Miw3
ICs0Miw2IEBAIHZvaWQgbnZtZXRfZmlsZV9uc19kaXNhYmxlKHN0cnVjdCBudm1ldF9ucyAqbnMp
Cj4gICBpbnQgbnZtZXRfZmlsZV9uc19lbmFibGUoc3RydWN0IG52bWV0X25zICpucykKPiAgIHsK
PiAgIAlpbnQgZmxhZ3MgPSBPX1JEV1IgfCBPX0xBUkdFRklMRTsKPiAtCXN0cnVjdCBrc3RhdCBz
dGF0Owo+ICAgCWludCByZXQ7Cj4gICAKPiAgIAlpZiAoIW5zLT5idWZmZXJlZF9pbykKCndhbnRl
ZCB0byBzZW5kIHNhbWUgZml4OgoKUmV2aWV3ZWQtYnk6IE1heCBHdXJ0b3ZveSA8bWF4Z0BtZWxs
YW5veC5jb20+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
