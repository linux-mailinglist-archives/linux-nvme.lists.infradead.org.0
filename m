Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BA2825A1
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 21:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7bFsCnKlc/BBM1yku18zZ0HQYNkkopyqDkvzUzUSzEs=; b=e2x2Hg7yYkUefrdCvuJSPg7uk
	UUF66W3CQ9NVlNVTjYOuSbH98Tp/KMNZLs2lF3445gmB2O2o0xGeK0wBWoXaJCYphsn1pBkxfYyKD
	Cj463k21I0NjylG9uQGKnP09Z5ovEYwhjZTXU68Jy+HH0sEZOToOsVVib5q7opPLCSF8AlbUZG5Y7
	V0EyfhbZWxbcFM7wLzpN9Wt1/y0pwxDjTth6j0sw7nOQBeOAOCiIzjXw5jR4Q+A3cPa/uakwjHzpf
	zCBh50QY1IHXiIxdS2LK4wCZ9uArox5X7HjKKAgSobANF5qLI4PYZbZtXhru/k27Ry5QHhFdJwFrX
	pdtBD4rtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huij5-0007bh-Uv; Mon, 05 Aug 2019 19:33:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiiz-0007b5-51
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 19:32:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id c3so17004153pfa.13
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 12:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/HoNR84OLvKYPi9lJSrpp//RpCFfmpQs4n3t7Ev/92U=;
 b=UMgYcrvCZGWJSeDStg0G/3IMMVbXKdcVR+jQmQ7tOXfLTnlr0ZrKwDa3AwnrC/thmi
 wB4cEhNjR1CVtN8pgxVRFIHtP+KiPoO5qzjQw8/JspLXa9bR0GVU+yKaIHgc5mXE9o9n
 lQLwgu1h7tzk+LsjGY6FaAxu5a2ukfGL1BCf3o75q+uxm6ePUv75zrkJNoixNjm3yco/
 SRDs2kCdi29q3yJGvJQuNgrcakXGFkH/bYLY5m7ADIGLku1zb+NsIc2iK/+sFNsI/Spz
 iSKF8zyIfxUIj+C2r7tosfgJn3SXgcY2Scsrtan1PDVesUQsuH8F+4G2LGbuUDmY28Yd
 Jg9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/HoNR84OLvKYPi9lJSrpp//RpCFfmpQs4n3t7Ev/92U=;
 b=SDY8WPhbnqShEvP/x0N2SEvS/fBEDywptq9E1NP//qiGohOF9k4bqSGtuz8OatTspS
 urtIKnvAlt5F4GvmqIpr93ZuDrYn/2zgLtzxh8K2xnIJKGS38978xEW8N3ZrkvFGqt7x
 EuF8iEw3zjhBxxfd4tp4XzACC44w9xFeL4Qi+GrHEDeER3PI2q1HBVpYNoYWvX/QKQs8
 GrFe6QuCYeRf+y118lQcUmXjAzdjdo2EWwG6ffAeq3sC8Qwp6wFos22p5/igrPoLy4a9
 3FEwSh5mk6PFh/5kXPHWE5mRt/AuV15G+s4FzxB13xtwjwIvGVdB2anKrtOX6XgA6HdS
 4clw==
X-Gm-Message-State: APjAAAWulwO+0jHa/kNBWV5tqqbNpIEJODN+rwo0m0xNiD+QNSRFPk5B
 OqlED3xFtQNFlpM/4R01pI4=
X-Google-Smtp-Source: APXvYqz1tldvDL26rUE30bK2l3nA9ZY/bQALMji+E49soWSnDndrSl+4/9RRrwBA4tLPo8g9xOTGrQ==
X-Received: by 2002:a63:5648:: with SMTP id g8mr21241350pgm.81.1565033572012; 
 Mon, 05 Aug 2019 12:32:52 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b16sm139314660pfo.54.2019.08.05.12.32.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 12:32:51 -0700 (PDT)
Subject: Re: Fwd: [PATCH rfc v2 0/6] nvme controller reset and namespace scan
 work race conditions
To: Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <e04be8bf-20cb-db7d-6046-74d8ec6fa485@broadcom.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <e80a1e7a-ab7d-fc89-0f62-2c88b7c75b85@gmail.com>
Date: Mon, 5 Aug 2019 12:32:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e04be8bf-20cb-db7d-6046-74d8ec6fa485@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_123253_199057_31752045 
X-CRM114-Status: GOOD (  28.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/5/2019 10:47 AM, James Smart wrote:
> 
> Hey Hannes and Keith,
> 
> This is the second attempt to handle the reset and scanning race saga.
> 
> The approach is to have the relevant admin commands return a proper
> status code that reflects that we had a transport error and
> not remove the namepsace if that is indeed the case.
> 
> This should be a reliable way to know if the revalidate_disk failed
> due to a transport error or not.
> 
> I am able to reproduce this race with the following command (using
> tcp/rdma):
> for j in `seq 50`; do for i in `seq 50`; do nvme reset /dev/nvme0; done 
> ; nvme disconnect-all; nvme connect-all; done
> 
> With this patch set (plus two more tcp/rdma transport specific patches
> that address a other issues) I was able to pass the test without
> reproducing the hang that you hannes reported.
> 
> In the patchset:
> - first make sure that transport related errors (such as
> nvme_cancel_request) reflect HOST_PATH_ERROR status.
> - make NVME_SC_HOST_PATH_ERROR a BLK_STS_TRANSPORT conversion.
> - Make sure that the callers indeed propagate the status back
> - Then simply look at the status code when calling revalidate_disk
> in nvme_validate_ns, and only remove it if the status code is
> indeed a transport related status.
> 
> Please let me know your thoghts.
> 
> Sagi Grimberg (6):
> nvme: fail cancelled commands with NVME_SC_HOST_PATH_ERROR
> nvme: return nvme_error_status for sync commands failure
> nvme: make nvme_identify_ns propagate errors back
> nvme: make nvme_report_ns_ids propagate error back
> nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR send failed
> nvme: don't remove namespace if revalidate failed because of a
> transport error
> 
> drivers/nvme/host/core.c | 67 ++++++++++++++++++++++++----------------
> drivers/nvme/host/tcp.c | 2 +-


I have two complaints:

- FC is eliminated from this fix, as FC doesn't use 
nvme_cancel_request() to terminate I/O's on resets/error recovery.

- With this change, any error set by a transport must be either 
NVME_SC_SUCCESS or NVME_SC_HOST_PATH_ERROR or it potentially misses the 
fix. I'm not sure that I like that, although any error from the 
transport is essentially a path error.  Do we lose anything by the loss 
of error clarity ?   Looking at what's present, we don't have much 
diversity when an error is set, so I guess it's ok.

- james

Minimally, include the following fix for FC as well:


Signed-off-by: James Smart <james.smart@broadcom.com>
---
  fc.c.new |   35 +++++++++++++++++++++++++++++------
  1 file changed, 29 insertions(+), 6 deletions(-)

--- fc.c.old	2019-08-05 10:55:51.318627945 -0700
+++ fc.c.new	2019-08-05 11:01:46.278380191 -0700
@@ -1608,9 +1608,13 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
  				sizeof(op->rsp_iu), DMA_FROM_DEVICE);

  	if (opstate == FCPOP_STATE_ABORTED)
-		status = cpu_to_le16(NVME_SC_ABORT_REQ << 1);
-	else if (freq->status)
-		status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+		status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+	else if (freq->status) {
+		status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+		dev_info(ctrl->ctrl.device,
+			"NVME-FC{%d}: io failed due to lldd error %d\n",
+			ctrl->cnum, freq->status);
+	}

  	/*
  	 * For the linux implementation, if we have an unsuccesful
@@ -1638,7 +1642,12 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
  		 */
  		if (freq->transferred_length !=
  			be32_to_cpu(op->cmd_iu.data_len)) {
-			status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+			status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+			dev_info(ctrl->ctrl.device,
+				"NVME-FC{%d}: io failed due to bad transfer "
+				"length: %d vs expected %d\n",
+				ctrl->cnum, freq->transferred_length,
+				be32_to_cpu(op->cmd_iu.data_len));
  			goto done;
  		}
  		result.u64 = 0;
@@ -1655,7 +1664,17 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
  					freq->transferred_length ||
  			     op->rsp_iu.status_code ||
  			     sqe->common.command_id != cqe->command_id)) {
-			status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+			status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+			dev_info(ctrl->ctrl.device,
+				"NVME-FC{%d}: io failed due to bad NVMe_ERSP: "
+				"iu len %d, xfr len %d vs %d, status code "
+				"%d, cmdid %d vs %d\n",
+				ctrl->cnum, be16_to_cpu(op->rsp_iu.iu_len),
+				be32_to_cpu(op->rsp_iu.xfrd_len),
+				freq->transferred_length,
+			     	op->rsp_iu.status_code,
+				sqe->common.command_id,
+				cqe->command_id);
  			goto done;
  		}
  		result = cqe->result;
@@ -1663,7 +1682,11 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req
  		break;

  	default:
-		status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+		status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+		dev_info(ctrl->ctrl.device,
+			"NVME-FC{%d}: io failed due to odd NVMe_xRSP iu "
+			"len %d\n",
+			ctrl->cnum, freq->rcv_rsplen);
  		goto done;
  	}


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
