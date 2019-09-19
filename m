Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C152FB7ACA
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Sep 2019 15:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6pE+Fx6CillS99aLSuWsEMfKb34qWfWelriFG06ge3M=; b=K/fJcrmsxD0azt
	vjw+qfpadZcMxYiuM3zCdVe4C2F93IuoISoDU81lFzxnoHI2cCviHG4WVCHDUY4DAzIX1rbqXXNml
	UBuPDmhbr/nFsfhVZDRdYdojEbHdR3c+0WmV8BORkYtVIx0l5nWB/y9jytCPTb63oTzNMySqHkBRE
	ZCFgCqDxEV0qMqMEiSgCAatXNMwsz/G/55TRxA9SjQ6xQDzBrIRonvg1TWj6wjQZfddSws3RSJljC
	WwCxg3dw8aQKEheyaR1ncBFf+1OctpdRXiujgOky6EH9ve23aBiV2sDKdHB9aS73EFDlhoaSUjYus
	6OESg2M/VqkajD+cKMZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwn1-0006QD-Mf; Thu, 19 Sep 2019 13:48:08 +0000
Received: from mail-eopbgr750073.outbound.protection.outlook.com
 ([40.107.75.73] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwmp-0006PR-E9
 for linux-nvme@lists.infradead.org; Thu, 19 Sep 2019 13:47:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9d+NIXY9g1RFgg34/p8UkdRvXf+BdVB6s+MlE8n0XnXM24uqcgf3kMkBKzwM2HU7YR/A3X8R0vNm9H5nGkBMjveYVvqT2/9qzkLQ5hY5zwHFUxaeQ1I4V3UlwO6VWuybrQDbAGhd1JBxI4CkMn685A3U6iFiaeqYY2uSFe2qTMsL674XA4gq5GePf8TKPbTLiNZQz3PhwEpbVoiTfuAS7cpH7neCgCRA7Enia45vRpNFkj6Qzqmo9d4BQMT+MfcQFBx4ldgJAV9W7+YPwXPikgz8PxlEd8xCqB90MG1N3qurmZ2mlorN2OUM2NHzK7Ed3y1j5IIu/y1238Aduv4TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lc/7Mo0S82K3XXn6045fwkE9Hs6ORlZCBm3PlGRa5uo=;
 b=lfxO2jTfDxp8MIK1QvX7ur0mo64AuS0gtES6mYuVnrXW56bOWqyukqQv/GTTPw993JLeQkcypC1F+g2jk1LSbHgCpm63wYwDt4a5qoyUo4KAFh86ZaoDJl9Eerd+OhCFM9MWxG/trtqX2wuq+UrD4Qf+QjZtFlUUUrPJeeHz8HlagpdFyVidXggUg7fQKkeiFdThodkEc0s27WzcwKnXi+oaqyICs3EJCWdqc2hEkthdwy3shtVARIcOil35dDhZHXDMNbfIXKJpEvKPDRXXPfFpT6L60++0RdImDg9xtZQgxKYFXzqUtmRbGoMd9ZiWAJOx9WFNNLtjhhoEeA1iAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lc/7Mo0S82K3XXn6045fwkE9Hs6ORlZCBm3PlGRa5uo=;
 b=kckn+cRdzfeXr5xZHLqFmesylMQpUecI5X64PNDRjGHulrI9PUYPkpfzR0LtN5BrP4wuXTpzxTJRoqCdJI634R8KnhRz1VCm7IDMku88UIWQRKuRFxRbcOwgv5/D4OefgtrUzSGm/DS8xIo2zK+FhOuaNWYmtYcwP7g1fXAIEqI=
Received: from MN2PR02MB6336.namprd02.prod.outlook.com (52.132.175.93) by
 MN2PR02MB7022.namprd02.prod.outlook.com (20.179.223.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 13:47:50 +0000
Received: from MN2PR02MB6336.namprd02.prod.outlook.com
 ([fe80::5c7e:59ac:afbc:2196]) by MN2PR02MB6336.namprd02.prod.outlook.com
 ([fe80::5c7e:59ac:afbc:2196%3]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 13:47:50 +0000
From: Bharat Kumar Gogada <bharatku@xilinx.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: NVMe Poll CQ on timeout
Thread-Topic: NVMe Poll CQ on timeout
Thread-Index: AdVu7wdM7XQNFN1FSKya+9NO0ckL4A==
Date: Thu, 19 Sep 2019 13:47:50 +0000
Message-ID: <MN2PR02MB633689DBBA6DE9DD7A34043FA5890@MN2PR02MB6336.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=bharatku@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1bc17e6-a024-48f1-ab2e-08d73d07f641
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB7022; 
x-ms-traffictypediagnostic: MN2PR02MB7022:
x-microsoft-antispam-prvs: <MN2PR02MB702263E28C47E02545EACE6BA5890@MN2PR02MB7022.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(366004)(376002)(39860400002)(53754006)(189003)(199004)(74316002)(55016002)(7736002)(25786009)(9686003)(305945005)(66946007)(66476007)(6506007)(64756008)(2906002)(66446008)(66556008)(102836004)(4744005)(256004)(99286004)(76116006)(7696005)(3846002)(14454004)(476003)(478600001)(86362001)(486006)(5660300002)(26005)(186003)(6116002)(71190400001)(6436002)(8936002)(2501003)(66066001)(71200400001)(54906003)(110136005)(33656002)(316002)(81166006)(4326008)(8676002)(52536014)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB7022;
 H:MN2PR02MB6336.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Wc67vZ6JEyj6xfObK1WTURL8Ebc+yjvqyLzDhmv5hddfrfm1tRxpCJc898IqcAGIWCT/Dmxs83p5FAS/p/k6xPaAbWZFsdCRmwJFW+nVeZy+J1l9nHIGU76K/g5ERsu+3jCYirp3OGHJFheRte1LwmoRM3SOyqFZi3xcz2js8a4Z2bNPsX29/kFN+wmgi5A8YQhNP4QmQltWgDXpTUpqua2kt4RpHBaOmLme8boQ4Yb6lYlktRCYPEvOqcWgveBZfRx5q/VCh0Z8y4jAcFIrB6elCJQF0j+SD1d/QaI4tfwtEtQ14x9flBPh3Y6pLihgv1FEA44BHs1UwUc7WCIuoe7PknUxj4ZonGGvJF30s16WmztKqWWM6nsSgI/Iw6TPv8AKXkwhpSnZGTe8l1xENweVwsWuQqrZnQfdfLLX4CE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1bc17e6-a024-48f1-ab2e-08d73d07f641
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 13:47:50.0259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4a33QhzktERdiu5GVlm8LS8JD74ZW+31NNVaIv57XGNDyCSPkDLMd6KpBae7yDgSBaeElOHclxU5wYJF6c2hgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB7022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_064755_480995_579A9E40 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "keith.busch@intel.com" <keith.busch@intel.com>,
 Keith Busch <keith.busch@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi All,

We are testing NVMe cards on ARM64 platform, the card uses MSI-X interrupts.
We are hitting following case in drivers/nvme/host/pci.c
/*
         * Did we miss an interrupt?
         */
        if (__nvme_poll(nvmeq, req->tag)) {
                dev_warn(dev->ctrl.device,
                         "I/O %d QID %d timeout, completion polled\n",
                         req->tag, nvmeq->qid);
                return BLK_EH_DONE;
        }

Can anyone tell when does nvme_timeout gets invoked ?
In what cases we see this interrupt miss ?

We are seeing this issue only for reads with following fio command 
fio --name=randwrite --ioengine=libaio --iodepth=1 --rw=randread --bs=128k --direct=0 \
--size=128M --numjobs=3 --group_reporting --filename=/dev/nvme0n1

We are not seeing issue with --rw=randwrite for same size.

Please let us know what can cause this issue. 

Regards,
Bharat

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
