Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2541EDD79
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 08:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JM8gHwWmwevmjDupWzQCaBENRqhMU3otqGd8Cyn98o=; b=tm5vGeg7xr82Q9
	NLn1rcikNm9e2eDKIc3/atnMZ1iUP/7D9a9ZNkhZ+cKYax8u/skdQed1bD5tAsr7qVo4/IkwJSni9
	IMQQxvxFPCtUAv+wU2YQ/l2ye/orpPkirh78nnpy9z+P3NuoVKo7PJqWs9I2rvGndN1PpzRdAbddM
	8u2pbx6M+IhRJG7D6WIAJhdjV8RY4jNGq6vYqzgGmSuwluqaU6bvnF7X01ammXiNAHURJhzV7UhMV
	0D9CdbmLcmzXMw6q2iFsAD4mm3Cz4cwSjxlZemmFNRApbk/17VnXC+u6SA6ilJEfJAPLCZctKf6PW
	K1YkrO6fBZKDSabNvsqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgjdZ-0003oJ-Vi; Thu, 04 Jun 2020 06:46:01 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgjdV-0003nh-PU
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 06:45:59 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0546c2CR182582;
 Thu, 4 Jun 2020 06:45:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=vUCYjp1f2wNESYetrOp1ZqmW5F/o/FmwplfPJxUOq/I=;
 b=BlBWPqpf/PAKOO+PwXnUCnQDAX4S9pnxguIs9OMO5U28MBvSl5RODQ1HT8XkhT7qbhNF
 +98WlrIe5+MKY2fQPvv2khmj8j7rCy8+eh+Q3XYBJN4dZ2Xpk8H20rKEJCndsF6I2yt3
 dNxJ7FJ/AjH4yuQ9SvK8tZYHNNtGB2K1I579wIY/IYN35odV1W1hx5oy2/N1M/gQpQrM
 p/twRrXqlnAmC4M3rows4W88LNsdPvB+3vKKtbyxludRb+L3vyd8Cyv186PcYO/bl/2C
 Fh5DmC3gY8ndVv/CiS89B6mTqPEHaUt0n0044T+ypPxvsKa23gVvqOyD8Shl+DWpQt0K Uw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 31bewr4x61-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 04 Jun 2020 06:45:51 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0546c4iJ186253;
 Thu, 4 Jun 2020 06:43:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 31dju4gnba-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 04 Jun 2020 06:43:51 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0546hn2R004470;
 Thu, 4 Jun 2020 06:43:49 GMT
Received: from [10.159.230.80] (/10.159.230.80)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 03 Jun 2020 23:43:49 -0700
Subject: Re: [PATCH 1/1] nvme-fcloop: verify wwnn and wwpn format
From: Dongli Zhang <dongli.zhang@oracle.com>
To: linux-nvme@lists.infradead.org, james.smart@broadcom.com
References: <20200526042118.17836-1-dongli.zhang@oracle.com>
Message-ID: <38a2cfb9-df2a-c5cb-6797-2b96ef049c7c@oracle.com>
Date: Wed, 3 Jun 2020 23:43:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526042118.17836-1-dongli.zhang@oracle.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9641
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=2 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006040043
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9641
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 bulkscore=0
 phishscore=0 suspectscore=2 impostorscore=0 cotscore=-2147483648
 lowpriorityscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006040043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_234557_958613_8140A7B6 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.de, sagi@grimberg.me, chaitanya.kulkarni@wdc.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

May I get feedback for this?

For the first time I use fcloop, I set:

# echo "wwnn=0x3,wwpn=0x1" > /sys/class/fcloop/ctl/add_target_port

However, I would not be able to move forward if I use "0x3" or "0x1" for nvme-fc
target or host further. Instead, the address and port should be
0x0000000000000003 and 0x0000000000000001.

This patch would sync the requirements of input format for nvme-fc and
nvme-fcloop, unless this would break existing test suite (e.g., blktest).

Thank you very much!

Dongli Zhang

On 5/25/20 9:21 PM, Dongli Zhang wrote:
> The nvme host and target verify the wwnn and wwpn format via
> nvme_fc_parse_traddr(). For instance, it is required that the length of
> wwnn to be either 21 ("nn-0x") or 19 (nn-).
> 
> Add this verification to nvme-fcloop so that the input should always be in
> hex and the length of input should always be 18.
> 
> Otherwise, the user may use e.g. 0x2 to create fcloop local port, while
> 0x0000000000000002 is required for nvme host and target. This makes the
> requirement of format confusing.
> 
> Signed-off-by: Dongli Zhang <dongli.zhang@oracle.com>
> ---
>  drivers/nvme/target/fcloop.c | 29 +++++++++++++++++++++++------
>  1 file changed, 23 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
> index f69ce66e2d44..14124e6d4bf2 100644
> --- a/drivers/nvme/target/fcloop.c
> +++ b/drivers/nvme/target/fcloop.c
> @@ -43,6 +43,17 @@ static const match_table_t opt_tokens = {
>  	{ NVMF_OPT_ERR,		NULL		}
>  };
>  
> +static int fcloop_verify_addr(substring_t *s)
> +{
> +	size_t blen = s->to - s->from + 1;
> +
> +	if (strnlen(s->from, blen) != NVME_FC_TRADDR_HEXNAMELEN + 2 ||
> +	    strncmp(s->from, "0x", 2))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>  static int
>  fcloop_parse_options(struct fcloop_ctrl_options *opts,
>  		const char *buf)
> @@ -64,14 +75,16 @@ fcloop_parse_options(struct fcloop_ctrl_options *opts,
>  		opts->mask |= token;
>  		switch (token) {
>  		case NVMF_OPT_WWNN:
> -			if (match_u64(args, &token64)) {
> +			if (fcloop_verify_addr(args) ||
> +			    match_u64(args, &token64)) {
>  				ret = -EINVAL;
>  				goto out_free_options;
>  			}
>  			opts->wwnn = token64;
>  			break;
>  		case NVMF_OPT_WWPN:
> -			if (match_u64(args, &token64)) {
> +			if (fcloop_verify_addr(args) ||
> +			    match_u64(args, &token64)) {
>  				ret = -EINVAL;
>  				goto out_free_options;
>  			}
> @@ -92,14 +105,16 @@ fcloop_parse_options(struct fcloop_ctrl_options *opts,
>  			opts->fcaddr = token;
>  			break;
>  		case NVMF_OPT_LPWWNN:
> -			if (match_u64(args, &token64)) {
> +			if (fcloop_verify_addr(args) ||
> +			    match_u64(args, &token64)) {
>  				ret = -EINVAL;
>  				goto out_free_options;
>  			}
>  			opts->lpwwnn = token64;
>  			break;
>  		case NVMF_OPT_LPWWPN:
> -			if (match_u64(args, &token64)) {
> +			if (fcloop_verify_addr(args) ||
> +			    match_u64(args, &token64)) {
>  				ret = -EINVAL;
>  				goto out_free_options;
>  			}
> @@ -141,14 +156,16 @@ fcloop_parse_nm_options(struct device *dev, u64 *nname, u64 *pname,
>  		token = match_token(p, opt_tokens, args);
>  		switch (token) {
>  		case NVMF_OPT_WWNN:
> -			if (match_u64(args, &token64)) {
> +			if (fcloop_verify_addr(args) ||
> +			    match_u64(args, &token64)) {
>  				ret = -EINVAL;
>  				goto out_free_options;
>  			}
>  			*nname = token64;
>  			break;
>  		case NVMF_OPT_WWPN:
> -			if (match_u64(args, &token64)) {
> +			if (fcloop_verify_addr(args) ||
> +			    match_u64(args, &token64)) {
>  				ret = -EINVAL;
>  				goto out_free_options;
>  			}
> 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
