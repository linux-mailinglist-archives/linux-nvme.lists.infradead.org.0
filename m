Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1F165B49
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 18:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vYEGp7Fit1fGRCtQ4HM8HK9XEEoyD1pI+jdmBU6AedI=; b=RDruoM8Ok71sgGcpsraxdWgHi
	y+/O15lMNDyak80oXtwomHjJPcSrVetPoo3QNuDJx1/IbLZmb2P+w9xxXIHwGNAQibhFiVsdo2vSE
	ksBSFQK4BwAxy4+WAyS/1/D3gHlgdie4afl7ITnQwoU7y3U+52rEL0+r++w+ZjMY+nD+3b9grXpD3
	O34x6BWHn/G8yIDG0CpKfMpiATkhUj8JyanYvvQ9Hofo5SMrW/nvrwGELrkDw/uClukdcxk8KDUtY
	9lAvCdayk02lx6VK2FIBu6kA7y0s5qehM7lrmrHtvy4+WFxQzPYNcZpHsXXLJeE0PTS8on+b33z0W
	6jlYZGBmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbhi-0000vC-RG; Thu, 11 Jul 2019 16:13:54 +0000
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbhY-0000uj-OX
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 16:13:46 +0000
Received: by mail-pf1-f171.google.com with SMTP id b13so2991371pfo.1
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 09:13:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cL/X5NWFWdpnoYati0e4ynEWFOKwvnTNd7do68BUFSI=;
 b=Bo7B5YOX6zxtHQmT30vbo5BXjyvjbYOWrVDfeKoPp6HH2ud9Z668CSZB4oLBJuxyHc
 ozeLxF49/eGFQ7GXWdR98Z9Xwfrc+WSnhpDSNVEQTA8iDATgrKpaPpWtXP/tnniAt4Vb
 mJcVEs5121PGT4GMTCWA4qiibf6Q+bf5GYCbDHI5a8y4pUcpGzNF+JQ4JXpeiNlYcy9E
 lBNXsvo0Q6z2tjO+p3MoGB5x9sfA+rugqgsU7aS9meKgwxhhaLNE/QGTd26Sq3essPMX
 0Vl7fMv0Q0ZAlOYq5YtmX3gpa/03CJ43RQ2OuIFRB+Pjq+/k9YkHue4TaBLekVzrxMG/
 rD6A==
X-Gm-Message-State: APjAAAWWIF74J2CGipEvAVqi1cvEIhlvssb6n8cW2MjDlYuIf2B7PX5e
 A4Htjy4BbOGfbOSTktcUcFt2mt3V
X-Google-Smtp-Source: APXvYqyovg84n56ALe90eTRcaqvHSGjGsiS1t6ROazoXWQqOeQYdKCgb+X3Tp9zfcZNO+iOAcaLIeA==
X-Received: by 2002:a63:c508:: with SMTP id f8mr5384491pgd.48.1562861623638;
 Thu, 11 Jul 2019 09:13:43 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id a10sm5093314pgq.2.2019.07.11.09.13.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 09:13:42 -0700 (PDT)
Subject: Re: regression: nvme rdma with bnxt_re0 broken
To: Yi Zhang <yi.zhang@redhat.com>, linux-nvme@lists.infradead.org
References: <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <648e86db-864f-9eb1-5275-564a1ef535fb@grimberg.me>
Date: Thu, 11 Jul 2019 09:13:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_091344_798457_DF17E3B4 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: danielj@mellanox.com,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, parav@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CC linux-rdma

On 7/11/19 2:47 AM, Yi Zhang wrote:
> Hello
> 
> 'nvme connect' failed when use bnxt_re0 on latest upstream build[1], by bisecting I found it was introduced from v5.2.0-rc1 with [2], it works after I revert it.
> Let me know if you need more info, thanks.
> 
> [1]
> [root@rdma-perf-07 ~]$ nvme connect -t rdma -a 172.31.40.125 -s 4420 -n testnqn
> Failed to write to /dev/nvme-fabrics: Bad address
> 
> [root@rdma-perf-07 ~]$ dmesg
> [  476.320742] bnxt_en 0000:19:00.0: QPLIB: cmdq[0x4b9]=0x15 status 0x5
> [  476.327103] infiniband bnxt_re0: Failed to allocate HW AH
> [  476.332525] nvme nvme2: rdma_connect failed (-14).
> [  476.343552] nvme nvme2: rdma connection establishment failed (-14)
> 
> [root@rdma-perf-07 ~]$ lspci  | grep -i Broadcom
> 01:00.0 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme BCM5720 2-port Gigabit Ethernet PCIe
> 01:00.1 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme BCM5720 2-port Gigabit Ethernet PCIe
> 18:00.0 RAID bus controller: Broadcom / LSI MegaRAID SAS-3 3008 [Fury] (rev 02)
> 19:00.0 Ethernet controller: Broadcom Inc. and subsidiaries BCM57412 NetXtreme-E 10Gb RDMA Ethernet Controller (rev 01)
> 19:00.1 Ethernet controller: Broadcom Inc. and subsidiaries BCM57412 NetXtreme-E 10Gb RDMA Ethernet Controller (rev 01)
> 
> 
> [2]
> commit 823b23da71132b80d9f41ab667c68b112455f3b6
> Author: Parav Pandit <parav@mellanox.com>
> Date:   Wed Apr 10 11:23:03 2019 +0300
> 
>      IB/core: Allow vlan link local address based RoCE GIDs
>      
>      IPv6 link local address for a VLAN netdevice has nothing to do with its
>      resemblance with the default GID, because VLAN link local GID is in
>      different layer 2 domain.
>      
>      Now that RoCE MAD packet processing and route resolution consider the
>      right GID index, there is no need for an unnecessary check which prevents
>      the addition of vlan based IPv6 link local GIDs.
>      
>      Signed-off-by: Parav Pandit <parav@mellanox.com>
>      Reviewed-by: Daniel Jurgens <danielj@mellanox.com>
>      Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
>      Signed-off-by: Jason Gunthorpe <jgg@mellanox.com>
> 
> 
> 
> Best Regards,
>    Yi Zhang
> 
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
