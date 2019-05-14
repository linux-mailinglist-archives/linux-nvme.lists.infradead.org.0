Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E30A1C075
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 04:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMSPJJiB+Bj957nc8AyTvf+9jqm47gf4T0OhoM9vsNI=; b=RNxIvfJemHiF5/
	c/5wGIqN3kSpzc72JFT/vNamlggXCHtsoDr0DkEFjOVnyemwsW20CQATIgAll5lqZ2xwHcvPMRDUK
	wIk2FPeKed83/A5gm0mEkPmRmxUc1lR4b9fFmCbV7JQc4pDA2IB7YifULa7HE2eSOlWuSRzB08Yy5
	O7eaZ3GyueGt6r4wKZshWD7RhRJvmX0ochxFomTs0KSZkKrxcTG1hF1I3MhkrUN2iUTEebrUpawen
	EvvV9hnHGnIBlnTreozK0YYdZbkx2pLQiWXLe6FM1hVdTYwj2+aKoF5Wu/NSUfPUs1J7dNLhKckeC
	gAtPEl1i7jHg+F+qoP5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQMq0-000302-7p; Tue, 14 May 2019 02:06:40 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQMpv-0002zh-MB
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 02:06:37 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4E245Vk163757;
 Tue, 14 May 2019 02:06:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=eBHxKNkRR5Ce1ucgVDEmtR8ENRjTgp/1bnfgKwmBg2Y=;
 b=NTJ9LWVQ6Kn7nMkCJU9mdk4aIXr4+qCp7wdj48YUSGlSO4vTz6WKQpGwtykL2KJsmC/x
 PRuHKi2bLR5mPjPqnvp8amsZ5qyRI5cS6vEQtnneQqqQINGVm9zdgm7vhZvnH3VHuTjs
 Ra0a4P5fz0QdmfxK0ebLMZsxGJeotUVryl3UwbKRJQcAi1Mi2CsEOK9WmXx3LnucoQRz
 W27p5pBK5CpJ6zYCfzJhAvR9FpCNfth2PcyxYLtwCKfmHJZ4DFr5AntSoDsHhlWxQs5i
 Oo0phlnpLRcW80H7QIEPNNHKAfqJgk33P30G1DS+xDsc5i8CQLz3oAwj5t1ldB15YoED gw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2sdq1qana9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2019 02:06:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4E25Gc3042362;
 Tue, 14 May 2019 02:06:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2sdmeatf9k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2019 02:06:21 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4E26GEF006926;
 Tue, 14 May 2019 02:06:17 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 May 2019 19:06:16 -0700
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V4 0/3] scsi: core: avoid big pre-allocation for sg list
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190428073932.9898-1-ming.lei@redhat.com>
Date: Mon, 13 May 2019 22:06:13 -0400
In-Reply-To: <20190428073932.9898-1-ming.lei@redhat.com> (Ming Lei's message
 of "Sun, 28 Apr 2019 15:39:29 +0800")
Message-ID: <yq1a7fpg57u.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905140013
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905140013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_190635_858211_235AC5E4 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: linux-block@vger.kernel.org, Hannes Reinecke <hare@suse.com>,
 Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>, netdev@vger.kernel.org,
 "Ewan D . Milne" <emilne@redhat.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Chuck Lever <chuck.lever@oracle.com>, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Ming,

> Since supporting to blk-mq, big pre-allocation for sg list is
> introduced, this way is very unfriendly wrt. memory consumption.

Applied to 5.3/scsi-queue with some clarifications to the commit
descriptions.

I am not entirely sold on 1 for the inline protection SGL size. NVMe
over PCIe is pretty constrained thanks to the metadata pointer whereas
SCSI DIX uses a real SGL for the PI. Consequently, straddling a page is
not that uncommon for large, sequential I/Os.

But let's try it out. If performance suffers substantially, we may want
to bump it to 2.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
