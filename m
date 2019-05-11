Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EB51A9A4
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 00:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FAtpJjh01fFzqSpaf6reeG2Wqf7Ic4soPOGohP7hmEs=; b=rEQkBjVqwM2X6/9paYzhtQIi+
	v47k3l5CiH6uVP6jkQbSl3Rz0SwRhmMPG9uF8Nj3xK66xeoYbNMllX1rmx59l1XJwR1lJhvIBXGeK
	fuqvMj16Ay2FrGUks2fQLbiuR9Qr/NHnFt+JSGBDUWlVvDH+yHJiSWkUgx/H69NNpyODnD8EOq4Aj
	0w4Gjk2vVTSpOqhsNK7zNBX7UvCR1pzmx9se0J4lCB7gqeRMJYlrjiItpUMdqqIPcBmSYsNpII50C
	cF8kPfRdCfEOgR3nA2aMQ8YRlvzAt8djsrTVa+Im5nUj2llGNjqIIDdNc268ePE3mYz8s1Hiasnf2
	/RfoRneMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPa7B-0004zB-5N; Sat, 11 May 2019 22:05:09 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPa74-0004Ux-14
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 22:05:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi2so4463073plb.13
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 15:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1oSUfegifG07mnA0NEiUEMfmyI+Fd25mPzKcmfHNNJA=;
 b=H446z7yk7N/IvxKdwC3Y8rd55gWT2f3IOHEGYkl7XzK2R38ovH5W7bjOO83JuGp7sx
 RZzEFTALw8Bm81R7py6BArIfTlOsVRbDKFHRVCF0PEn+a2vmoDNf7SzWYkAe1gTia0oy
 hGGDmEc5YjSxgAEVF0FD2EUbl1vzdy1ghNGb+zBPWS763VXoxnVGa6k6BDraOtigMbMx
 M6rfxcMCxI7AWqgjtqRJQj1j4vEoZ3Se8/AkpfjUfKVb9l2vI63F2kcAePODQFNDg5pc
 aBKRBAGe276FmSU5tBY0jC6uigf+oG4dqjByjhcuRazcIc/cTFsn0dmH3UfGrdWNCjfk
 koRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1oSUfegifG07mnA0NEiUEMfmyI+Fd25mPzKcmfHNNJA=;
 b=ducmdwjL02NR9FD+UbfSaOAe+Fu8e6cxKIpD6Jyaw96NvUKdp8dPHJ0zUwf8AADFHC
 nD5eD5IQLw4b1d4XwD93TZcp2Ikw8lE7xn37guW72fIafMSoeE7ZVH6rxGCO3H8h1MjA
 tHYrTigH5fTckWRK6bjsYU4wk1VYeYfAQn+zOwwpy/DgduVx0cVjrg02LevuspY8G2wq
 bSq2hlreX/AT6GOAn2P4haLGUI7v6hqyMaZ+BVsUQYVkvLZmm9CO+cRlsXPaV6Cd5tpn
 BSOp33qrEJOzVcky9mWkYjZSSZ2Xch5B0v8h/gKlgcvW9lIEi5lBTMesEFDfWWKC4jPY
 xtSA==
X-Gm-Message-State: APjAAAVbrfw/VeGGiTCsTvkHL+spYqpzltKf28ur1qR/+gv37WbkfNYr
 FzhFklTJdSdEKNOTqTpuHI8=
X-Google-Smtp-Source: APXvYqyxDjlZzpt/mkSx/I7aFgBoJq591FUnxnAWk4hhODtCgpbOd4g9wHSMDNc/udx/hHQOGzvYiA==
X-Received: by 2002:a17:902:b782:: with SMTP id
 e2mr22733165pls.228.1557612300848; 
 Sat, 11 May 2019 15:05:00 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 10sm15821866pft.100.2019.05.11.15.04.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 15:05:00 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-fabrics: Remove unused argument
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
 <20190511134255.6790-3-minwoo.im.dev@gmail.com>
 <SN6PR04MB4527A361940ECE60AFE846E5860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <35242331-5597-0cb5-e72b-4ceedca71f4c@gmail.com>
Date: Sun, 12 May 2019 07:04:56 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB4527A361940ECE60AFE846E5860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_150502_288616_C96BE067 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Variable "count" use removed by  any commit ?
> 
> Or it is been like that since the introduction of this function ?

If you do "blame" with the first line of this function, you can see the 
count has been introduced without being used at all.

Commit 07bfcd09a ("nvme-fabrics: add a generic NVMe over Fabrics library")

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
