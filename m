Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0622CFE7
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 22:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hQ77j2JMRD6ovXPCbE+9ub+fmhRsQ6i8ZoWkR2zMHmY=; b=IPf/zATl0sCNFHD+RacbOkfdb
	JS7o3679bUUd03TkM03JtSPNS0HzSCAjC4Bjxo34RPlCEmlnVRrSI/ir/WfQN+aJElDD8Ftp58dD6
	BLTawntLGC30yENgrlnrTIFf8CKhqe/FtN68z6j7FRJRiYb1kXJcjmvqcZMq1Yda9E/fnOWTmpYtq
	L9fk+b1NFkeFJDW5orim04hRZLPymV8qGNWZqVFybKVcJcgLbsMOxFR3w9FnIhMSmh9SN1fqhIvG8
	9ptCBLGSs8jPkpW4yhLWQGNLTLauSdZsGlSZslHL/5KG6eamKXCd/Eaw0lbq/a1hxJB5Iu1z5zxlf
	yKe7gMNjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hViHd-0008BS-Sw; Tue, 28 May 2019 20:01:17 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hViHY-0008Az-Sq
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 20:01:14 +0000
Received: by mail-pf1-f194.google.com with SMTP id u22so4845254pfm.3
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 13:01:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Q+mOYGbvlXf/pLpPo5O5cL1I9AU/lKtHj8EHxHWM7aE=;
 b=T19+zBR4FF1thDA5pfOEenwkVw/wcmH07N2zHIeHtwtpyQkuMSCtBiId+dFHBpf4UU
 9XY1VyuY6AOA73ysxYXDAtyfE1KAof34y+6G/9Wdxpl8cp/V8f4L1egdyW1xuiFNDykj
 Aixb3nb6QZufBPMmcahGBH/Uwh2VzIiMTQyhvXRTrTikMo36l8WkPek96ICgtULdyALb
 2FiLTNL+nXo60v+v+ctNt2dwa6SWWtwAsygIOpPMLi+WPZNFGJaub7/wiALE5tB5lhFO
 i0MKJzXw0yxUqDF0kOz8P+VNAKcKFYDoG78AYUUVhJHEXCOVDu6GHwZ1XjA6hZj1DMg0
 x8iw==
X-Gm-Message-State: APjAAAU4UUMhi9ZmtFw+lx5jN+EaAnSCvgGq23lP0eRo4nx/ETYtXsGF
 kHDs6y+GXoq7pdRHplv3njXiC1tOS9U=
X-Google-Smtp-Source: APXvYqyt2SVhFJrrLPfTnoBK7RGIsCQTuiuLbL4YwQJGNMvnrI34iy7Dea7SYZ/W8M2Ikgnrk5s8LA==
X-Received: by 2002:a63:2c01:: with SMTP id s1mr134651772pgs.261.1559073670187; 
 Tue, 28 May 2019 13:01:10 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id d13sm17884479pfh.113.2019.05.28.13.01.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 13:01:09 -0700 (PDT)
Subject: Re: [RFC PATCH] nvme: allowing transition from NVME_CTRL_NEW to
 NVME_CTRL_DELETING
To: Li Zhong <lizhongfs@gmail.com>, linux-nvme@lists.infradead.org
References: <20190527040159.3631-1-lizhongfs@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <305425a3-a815-7842-85ec-eb4275d39780@grimberg.me>
Date: Tue, 28 May 2019 13:01:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527040159.3631-1-lizhongfs@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_130112_934376_A73EFB51 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kbusch@kernel.org, axboe@fb.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> It is possible that nvme_remove() being ran concurrently with
> nvme_reset_work(), with following sequence:
> 
> nvme_probe()
>    nvme_init_ctrl()
>      //set to NEW
>    nvme_async_probe()
>                                                        nvme_remove()
>                                                          //can not change to
>                                                          //DELETING from NEW
>      nvme_reset_ctrl_sync()
>          nvme_reset_ctrl()
>            //change from NEW
>            //to RESETTING
>                                                         flush reset_work()
>                                                         //not yet queued
>            queue reset_work
>              nvme_reset_work()
>                ....                                     ....
> 
> With the above running concurrently, then it is possible to cause some
> strange issues, like kernel crash with illegal memory accessing
> or something like:
> kernel: pci 0000:00:1f.0: can't enable device: BAR 0
>   [mem 0xc0000000-0xc0003fff] not claimed
> 

How about making nvme_remove syncing the async probe?
Something like this:
--
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2a8708c9ac18..33408ffa4ba3 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -131,6 +131,7 @@ struct nvme_dev {
         dma_addr_t host_mem_descs_dma;
         struct nvme_host_mem_buf_desc *host_mem_descs;
         void **host_mem_desc_bufs;
+       async_cookie_t async_probe;
  };

  static int io_queue_depth_set(const char *val, const struct 
kernel_param *kp)
@@ -2759,7 +2760,7 @@ static int nvme_probe(struct pci_dev *pdev, const 
struct pci_device_id *id)
         dev_info(dev->ctrl.device, "pci function %s\n", 
dev_name(&pdev->dev));

         nvme_get_ctrl(&dev->ctrl);
-       async_schedule(nvme_async_probe, dev);
+       dev->async_probe = async_schedule(nvme_async_probe, dev);

         return 0;

@@ -2804,6 +2805,7 @@ static void nvme_remove(struct pci_dev *pdev)
  {
         struct nvme_dev *dev = pci_get_drvdata(pdev);

+       async_synchronize_cookie(dev->async_probe);
         nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
         pci_set_drvdata(pdev, NULL);
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
