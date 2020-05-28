Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33001E648A
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 16:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXBZjlYSWq9VYhw41fhCs5FVkP7m+wzNcrhvwm+143g=; b=iN0KV3PngJmy6g
	mgf2SJcWjm/GQCx3X5f8lIuP1coNteWa2oUh56eDU5NCUEZarj2r4/yno+eYDmXOHrKqsF+QSTgYD
	iK65nKXJHSaXYdBwdilBNZFr0RgJGdTOk9m+Eu8MllvfuhXQvpe2emhv/QnVa+MzimtY+s5D2wt+0
	MsacW0BmfAiPqqDFubmvhW3Mxa4SXNjy/Q9pYMViqnNpj5bqS59Wk41zVTohKRQ37fK18jWup5Nwq
	nJAIxuJieVJH5CR9zeE7BUSJj1/QBW3aowRCNWkfltIpmXwu0GvYS/PIeeBweVS0xN+VorT5t3z6F
	0ZfZjDQr1BCNwAMss2Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJrj-0005VR-NL; Thu, 28 May 2020 14:50:39 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJrZ-0005TL-2w
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 14:50:30 +0000
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
 by m0001303.ppops.net (8.16.0.42/8.16.0.42) with SMTP id 04SEkwAS027123;
 Thu, 28 May 2020 07:49:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=facebook;
 bh=XXPkVpGs6JJ3e1yEI1OkF05psluYykW7D+19EjTSaTs=;
 b=Df9F0TaV8esuXx6ThT3zhuJqP3ER4zPPSC1dfFErY66jHPk8yOSMLp0LjCXe6KbVa7Oc
 YzJhOCF8MyN4NKQhecCnufdk5Mp2MZPHxhvZntRBoZyov/WzUeW9pGWm65XPU6XTXLAT
 VMZY0jz0qXwn6O3SCITdTgQ1xZpr88W+bSU= 
Received: from mail.thefacebook.com ([163.114.132.120])
 by m0001303.ppops.net with ESMTP id 319ybhr72f-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 28 May 2020 07:49:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.228) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 28 May 2020 07:48:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F2OTPW2J3ba13vHe3fQyKwJoI5ld6KpKM6Z4SpMOZ5n4HJto9PvcLVFOURtDEWkY3hDkN6HgS92yyazv3k1lm3TWb/OanTQxmi3sriaGTwSrpkJVAYYm/0e+b2IpQpuiEADvgQpZTNZ29pjAMBUSCdWMwNYhXBXEKHgP0oP9U0j3fnQVK0TwKqze/lGRkepn+Zw3Sl+r2OQVTR74460a21jDZ5ZNa2p9aQD5DNHQB94p6nTQTh30zPbqV27L2+pNSDjMeQgmilmmGSAfSFhkYo41mm/Lx5ccFhAWH2GOPHP/Rz5F4SUhm/Nyq8NGRpfXWsKquLgjUt3chluds48f9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XXPkVpGs6JJ3e1yEI1OkF05psluYykW7D+19EjTSaTs=;
 b=bU+UwD49EQIbXq2fMNYsC3FcYBZ2MZM40bhmuC7EY5wqSU1kt64bJq9JveGbGSFKkaJFkAyL7TP8rB5kHUVZsalmortOrZLt5MGOAnMUw5jQuqu2tXshrIrZNaZbkwvlKnycpRAT5cp6pOh4KeDpSqLeQCSrxV0dCGISt+YPtpn1r18y+O8Z6HOsobvrmLsKuEYAFEFPxyy5tpx0XVsgISolpC+BihCLDWdKoQmNrEl+pW2/4l3EO2lZXFPvj1MD5qlBlM3GdJ2iR9B07Larka5vg6f17aPpBlofffyyy7k6rKLpZ/XxM/raPjIXn2isgQ3t93/ucSFoF+R+pk0nvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XXPkVpGs6JJ3e1yEI1OkF05psluYykW7D+19EjTSaTs=;
 b=YERVO2VJlrlQ8uDB5N9zlCBD+48+4sCNSGdV2iX7ezw8TmZJEXIQv0RCgmkR6bAEErA3mVpmkBG+i5jX3qsWDzsDxrazzsAbvOjqj79RQ2dzJ1bg6PpEHseZWdQj+zmxds0KGABeloopD1VG4gdFrG6/W/GNAKNuVa9kLv6LKIY=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none; lists.infradead.org; dmarc=none action=none header.from=fb.com; 
Received: from BYAPR15MB2566.namprd15.prod.outlook.com (2603:10b6:a03:150::24)
 by BYAPR15MB3414.namprd15.prod.outlook.com (2603:10b6:a03:10f::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 28 May
 2020 14:48:54 +0000
Received: from BYAPR15MB2566.namprd15.prod.outlook.com
 ([fe80::c0bd:87f5:aedc:b739]) by BYAPR15MB2566.namprd15.prod.outlook.com
 ([fe80::c0bd:87f5:aedc:b739%3]) with mapi id 15.20.3021.030; Thu, 28 May 2020
 14:48:54 +0000
Subject: Re: [GIT PULL] nvme fix for 5.7
To: Christoph Hellwig <hch@infradead.org>
References: <20200528132231.GA837884@infradead.org>
From: Jens Axboe <axboe@fb.com>
Message-ID: <e1acfeb1-8797-a0ac-0187-b2a2035ac302@fb.com>
Date: Thu, 28 May 2020 08:48:51 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <20200528132231.GA837884@infradead.org>
Content-Language: en-US
X-ClientProxiedBy: CH2PR14CA0031.namprd14.prod.outlook.com
 (2603:10b6:610:56::11) To BYAPR15MB2566.namprd15.prod.outlook.com
 (2603:10b6:a03:150::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.159] (65.144.74.34) by
 CH2PR14CA0031.namprd14.prod.outlook.com (2603:10b6:610:56::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17 via Frontend Transport; Thu, 28 May 2020 14:48:53 +0000
X-Originating-IP: [65.144.74.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b94fee72-0724-4f54-dfbe-08d803163e51
X-MS-TrafficTypeDiagnostic: BYAPR15MB3414:
X-Microsoft-Antispam-PRVS: <BYAPR15MB34143FCD793F548C752D6404C08E0@BYAPR15MB3414.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:175;
X-Forefront-PRVS: 0417A3FFD2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gYZiipo2bCkEvYEXPht7SRBm3Q3YJyYQNxef7ixqYeoOQU0/nxAMHF6xxijZ2t8eu9o4TEmWfRZWDZjY2L6pvTh6ZGk/ZB6l0mKmh+3qAP9Uh1xvmlKtRyJdkskSaPFe0/c5oDHcuoXjaaAaAIe8NomA4Zk8uEtwVLczYZLmYabdasjLTB3k8gKNAL0mnwJGL+YMQVmulP+XhkBrnPk7IY2apaYcC6orfjLZwIeOeMCqI5QfAAtIG9vSwfbFmO9fO8pf8LtZN9WqLoJXzilE4SSDIAVF+rggCmNBwCRLdy1kJO7P9n07Yj9oVxNY94rYSVCSXzOKKip172GYi0IMJZYJmQZmcvBnnWxfdykoWxZHCHxCkKjye5V8rp/w5MAP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR15MB2566.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(396003)(346002)(366004)(39860400002)(16576012)(31686004)(316002)(86362001)(2906002)(6916009)(478600001)(956004)(16526019)(26005)(186003)(31696002)(2616005)(8676002)(36756003)(6486002)(53546011)(8936002)(5660300002)(66946007)(4326008)(4744005)(66556008)(54906003)(52116002)(66476007)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: dJoWDlB54aIyBnfJHCPMxnMQ6eE6bpmucQ/EpGab8bIlQwjzlB0ivopKQRmfon1U3skrGjHinfvuXKjHPdF7x6zn4JD+ci0tuApQ32Q3oqNigQpy4tPmtPiQ30IAREwWTPfeh8xOx1eQrvyvZ2WI1JV8LLs3Xl8HKtEXAQ5g/F34DdW+aeISYPa7bSqwTGwr16R5Q3Ii3S4DyXMBUUmoELAgr8rrSwHFXEtGpMV/o31IDR8bNbpfC/ZwlM31XGbGkffCP4LGlKdXsjlqMMNLJG5c0bxe3aGEdx1p8oQKKMHJP4Vo1wfyxvAm0BCJhXdmK92vRNkcTVOmvW52sl0LTfzedsfMeklrycupDvIkn79dznu1Ke8ncSL+OUpKDr4hMDWbPGZlLVckidGRSkAiEmj9CODunNGqqrLiD2hiQKTcQH80bnlRecx2o4mNgJqtuKkXLmmc8tZa/ZghLdYK6OcqPTEf7PbTn7W1X+kiFEg=
X-MS-Exchange-CrossTenant-Network-Message-Id: b94fee72-0724-4f54-dfbe-08d803163e51
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2020 14:48:54.4041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o6hDWnLnEtZyLCVLL9n8pcYk/nU/nZaREXWmQq6P/w3BdC570KBaVkMXx3BnHOmS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3414
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-28_03:2020-05-28,
 2020-05-28 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 phishscore=0
 clxscore=1015 priorityscore=1501 cotscore=-2147483648 spamscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 mlxlogscore=868 adultscore=0 mlxscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280103
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_075029_245889_7BC5145C 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/28/20 7:22 AM, Christoph Hellwig wrote:
> The following changes since commit b69e2ef24b7b4867f80f47e2781e95d0bacd15cb:
> 
>   nvme-pci: dma read memory barrier for completions (2020-05-12 18:02:24 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.7

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
