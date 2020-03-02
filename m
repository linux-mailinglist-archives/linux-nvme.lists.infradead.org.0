Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD81176368
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Mar 2020 20:05:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hV7ZDiVTxtrpu6blwBc9VQgY12+i+FVrwD35/o1325A=; b=ejaVKXO86xCEVvcx5YQlcJ6ee
	fNOc1AAg2a9knr6YDbr7AuN5tWOUEI17UmZYDSJRPuPUyK4RYTL9Sm9idZj9uXgBsf8QwYQg/QJdB
	rWjA0CDJoQk0NAAFS5pZEqhtSJY2BYxawVLbd6+vM2pvISRY8LuHXs2PKADjpjtQL/XwxCA6B0wex
	JXiwhfjMt3VuW4X2kB+iROj+eRU5OkXroD/+ef2uJWSCs4kUK25uKsYWn+79i/AnT0MiXNk333Ib7
	qgPZmI92C4oKnpQyLlNzmAdEMGGkyvozrvD3Q4SFbmH2O526kUXLvHDv06OQdsa7jBmyqdlgzXzZ7
	vwG06ZSpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qN1-0002K1-DF; Mon, 02 Mar 2020 19:04:51 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qMw-0002JJ-At
 for linux-nvme@lists.infradead.org; Mon, 02 Mar 2020 19:04:48 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022J2xWq057828;
 Mon, 2 Mar 2020 19:04:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=vLLLjyC3CySt985EQYQ9LzCbEsM4CyLaWd6Rk8qcBi8=;
 b=bBKFVvkz61r0n8WK1NKYwhRkG8D+MmHcmpTTxEikpglckDqYlldP/miqno2KuQTbiBYv
 DXxQm1/+YQz73CgYnZLiFmJLXcJDM/s0WlDmUw+kMlIrg4oUSTVWVIEzuLXE7EiGhCI5
 VmMDhgu3MWl38SvSfboo93wQrqO9wx/LPepzjAPaFhG3cF7waVZoo9ZKLfKxDOHvhTZT
 eNAEYfMZ++b43ShjsJvnDi+xn4mVQHeLRsuOTwUwVO2xdVKQOjkAcAlmLgjuGRl7FXrh
 wQmK3d57usEQfoaZuagWJlfxBwla9Ao8RZsyT1B2RiReAvgpSkmeUACa3Nxrd9kTUV3f Hg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2yghn2wmpf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 19:04:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 022J2Ykg117856;
 Mon, 2 Mar 2020 19:04:28 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2yg1rg9vbe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 19:04:28 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 022J4P5x019823;
 Mon, 2 Mar 2020 19:04:25 GMT
Received: from [10.154.114.32] (/10.154.114.32)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 02 Mar 2020 11:04:25 -0800
Subject: Re: [PATCH v2 1/1] nvme-pci: Hold cq_poll_lock while completing CQEs
To: Christoph Hellwig <hch@infradead.org>
References: <1582772023-67704-1-git-send-email-bijan.mottahedeh@oracle.com>
 <20200229185750.GA5698@infradead.org>
From: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Message-ID: <bb05217d-df4e-fd62-71d4-5012b5a35d93@oracle.com>
Date: Mon, 2 Mar 2020 11:04:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200229185750.GA5698@infradead.org>
Content-Language: en-US
X-Antivirus: Avast (VPS 200301-0, 03/01/2020), Outbound message
X-Antivirus-Status: Clean
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9548
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=981
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003020124
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9548
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 spamscore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003020124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_110446_416272_53AB4F2A 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2/29/2020 10:57 AM, Christoph Hellwig wrote:
> nvme_poll_irqdisable will need the same fix.
>
> Also I think we can merge nvme_process_cq and nvme_complete_cqes now
> as the split is becoming rather pointless.
Ok, I'll work on a patch for both.

--bijan

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
