Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1DDB9615
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 18:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cKYz98ZXm+RayV8ihS5Xq4OXW4GiZYad71f2UEZb/2M=; b=iEZ2XO5MXG/UmWaqDtwqVRap4
	biw1W8gXfZMI8AGAlZ8qPaaffP/lME3V398eK4Yhxwz4A3oFmu1hE7xJkWsBrAP/nGZESk5UZ/5IU
	FSqdvbptxzIU2MMtRj80klKY44VJn/VweONwyiIkvfOzTNqQgvx0GsK9jzIJSaw4iTXRY0WN4GYsu
	+piyRR6bHgNV71Cc8civCcYUhpqEg/RHS9pLaUY0TVwQ+eTb6H5pRsht+yvD88MdTjXhnavBRd11j
	NdWhWNDJ9jS72+PtqNvWoQGnmX/Dkq2B2D6ejy0hqIiEFDc1V8T4IoJnqaIwgnAjZdooZdDIOnnVy
	pDYoiikVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMEe-0003G5-Az; Fri, 20 Sep 2019 16:58:20 +0000
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMEX-0003Fd-Qy
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 16:58:15 +0000
Received: by mail-wm1-f52.google.com with SMTP id b24so2931530wmj.5
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 09:58:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vD9eSYWlAbIW8kaJHry0of0r83YxSibPW1PpxGVbdcU=;
 b=sv+O9pml9xhOoVKonzNguHg77vHcMHFd/CVD6lX63wKsIDanFBeujvlgSu4h6rt0c/
 5sGKtn/cWh6ENb9gSXracs0J4AX/vQMWNayel3TwRQlcR4MDdeRg7+oZLUo6vNlXOAJN
 tZndFi/AUqP+aZ8KFYlbZolkdMgaVYmm+ztLjpY6NlCD3a4Tno7GxIl+5mxrIfmk3jEC
 R0hrEvNsn09K0rVdlqC9Va5wo8BA5JwqhKoC6szS+bl1Ad9w+FN0gr8JoalUkyOLHCqU
 s7JBSP8vznkMXDVLKAkiQqSh+Dxu504QlfDqD0TORg8ISDX6Qf0p6BpeSG6QUcflFKsi
 t6Dg==
X-Gm-Message-State: APjAAAXjQtWTzsx02HexZz8msBz3pO03U8yio7iLDEgyZyYqhEJ7J2Se
 IvbwZJTeEnrUdk3XooW0O9FtDh+k
X-Google-Smtp-Source: APXvYqxmZBQP4CW3eJ3HdWd/Y/qiMzRgi7yHK6PDUsfF8JsfRyop8T1R2pFfm83WxeVZ2xjMnrFj0Q==
X-Received: by 2002:a1c:a697:: with SMTP id p145mr3891437wme.24.1568998691682; 
 Fri, 20 Sep 2019 09:58:11 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e20sm4930468wrc.34.2019.09.20.09.58.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 09:58:10 -0700 (PDT)
Subject: Re: NVMeoF RDMA IB: I/O timeout and NULL pointer observed during
 rescan_controller/reset_controller with fio background
To: Yi Zhang <yi.zhang@redhat.com>, Max Gurtovoy <maxg@mellanox.com>,
 linux-nvme@lists.infradead.org
References: <1437535598.446597.1568798016422.JavaMail.zimbra@redhat.com>
 <2ea07772-3905-fb82-4d73-7458a963677c@mellanox.com>
 <1a2ef415-72fd-7a78-33b3-5a2656246f77@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d8526cc2-e270-baf0-1ff6-728e69e8d86a@grimberg.me>
Date: Fri, 20 Sep 2019 09:58:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1a2ef415-72fd-7a78-33b3-5a2656246f77@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_095813_874973_1D8A5698 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for reporting Yi,

Does this fix your issue?

--
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index dfa07bb9dfeb..981da9ce3cfc 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -614,7 +614,8 @@ static int nvme_rdma_start_queue(struct 
nvme_rdma_ctrl *ctrl, int idx)
         if (!ret) {
                 set_bit(NVME_RDMA_Q_LIVE, &queue->flags);
         } else {
-               __nvme_rdma_stop_queue(queue);
+               if (test_bit(NVME_RDMA_Q_ALLOCATED, &queue->flags))
+                       __nvme_rdma_stop_queue(queue);
                 dev_info(ctrl->ctrl.device,
                         "failed to connect queue: %d ret=%d\n", idx, ret);
         }
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
