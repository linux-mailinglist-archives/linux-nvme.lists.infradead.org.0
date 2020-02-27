Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 556F5170E74
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 03:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w0m+/lPNulHt6QfyliH5Z/Af0Nd4W1ReLiUi+MATVDY=; b=YiTx+zZzNZnnWih9FXlFO4mRu
	/Wnvx/oW948HyNz+UwvAH6ptE+WDeO7pheW26/Q0WjPyS28aFabEJ9aPIgJDvBbDhz1adBhLAqAeq
	HWC01WoVwzks9U6XejVr+dh9Hu7FcK5RW3Ujznw+uFubXvLXGozhdcUkRWk9MpGIp2QuITleuodd0
	jd0w3d85uS1OtUIrfKAV27itd4IVa2bwKE8UInV5mNdYjhVtjHPD1FJM6IZul3orO1QoBYL9Fa+Mu
	V5YbowK5yi7t+Swj67+Q7vhxmoxgjeHDfph51QZ8NAjOEA3DleXM5pt2Ah/TqGZ/XrG3CyDyuwX0J
	XGrh8Xnsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j78y0-0004xK-Aj; Thu, 27 Feb 2020 02:32:00 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j78xw-0004x1-UU
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 02:31:58 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01R2S5aC092101;
 Thu, 27 Feb 2020 02:31:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=el+dQw8/82dN2vAzm+wd6M8bQ+fYLKaL5hYPXxX+LBI=;
 b=TrjziRUAGf569IrXfxLdMqgY9exL5J3D3Zfs5y9R913lojHZ6mBSTyOsbX2jBX4lxSMF
 jYrDR+aILAUaNLYjRSf9JWMooNGR2bEzLxYJplerpiMnMiqWTyb8KS2/GVXo4UlZ/2HD
 yhbNlXBNSoS1ac7nZDsBJ0W8SgnHmdY6WrvPc3mEErOTXlGZqtFPysvlzo1ZX/YghqnL
 PtXbXDPn4u3NgSuYb+opUbL5v9Iv76iA2h3bIDNLeVpBgki1e50fmDgP8IY/wnCnUyFb
 MWrwxxU/8ZaPDvPonogtuq7f0awwHBrEFH+bVT+Sw4LBNMahiI4u8uNxUg3Eu9tL+Ipc aw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2ydybchu51-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Feb 2020 02:31:49 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01R2Qf59073676;
 Thu, 27 Feb 2020 02:31:49 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2ydcsb6dwt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Feb 2020 02:31:48 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01R2Vlcl022949;
 Thu, 27 Feb 2020 02:31:47 GMT
Received: from [10.154.173.100] (/10.154.173.100)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Feb 2020 18:31:47 -0800
Subject: Re: [PATCH 1/1] nvme-pci: Hold cq_poll_lock while completing CQEs
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <1582753762-47774-1-git-send-email-bijan.mottahedeh@oracle.com>
 <f85ab885-0837-633f-51eb-028dcf451486@grimberg.me>
From: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Message-ID: <993bca83-459a-7982-3351-18446a14b9c0@oracle.com>
Date: Wed, 26 Feb 2020 18:31:44 -0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <f85ab885-0837-633f-51eb-028dcf451486@grimberg.me>
Content-Language: en-US
X-Antivirus: Avast (VPS 200225-0, 02/25/2020), Outbound message
X-Antivirus-Status: Clean
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 bulkscore=0
 spamscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002270015
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 lowpriorityscore=0
 phishscore=0 spamscore=0 clxscore=1015 malwarescore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002270015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_183157_071241_5A5B26DB 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2/26/2020 3:06 PM, Sagi Grimberg wrote:
 > This needs a Fixes tag, and should probably also be
 > picked up for stable. Other than that, looks fine,
 >
 > Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Is this the right tag?

Fixes: dabcefab45d3 (nvme: provide optimized poll function for separate 
poll queues)

Should I send a v2?

Thanks.

--bijan

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
