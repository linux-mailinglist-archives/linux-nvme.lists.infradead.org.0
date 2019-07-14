Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D04567E45
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 10:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGTubZaWV1ve0tlNnuo2UC4DUvqGqjtdxNE1pwq3Z5Q=; b=cKTxwMUleWuSsc
	+ZijmRf1mhpAWE774p7ht5xKgYtfGEUi/oTdNt/OR+GUy03CXlI2tOXCJA9F24u9vYgS6dSh05FA7
	ef9FVbAsnwjOl/+AcRiX2QJNdy2okBvCL/VqekP86iql1E6jiWYSOCV9gBhTfhv+uofz0/bwcVCmf
	3gdWoGyjkLUB26eHWNyr6Hvh/x4PXCbs0k+YGtknIxoq16NXqEf3wv9VFXpF3fFWyl1bPUzzKZyIF
	smZe1AMTgWl73nrCNPp/OF5pvGQ3Kig9mlre/BKWMnWJziWC59CDtv4rIzNZB1No5B/YbqzXvmD2Y
	QeEuimA1NrYtYPJlie2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmZf6-0004RL-Iu; Sun, 14 Jul 2019 08:15:12 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmZev-00047Y-1t
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 08:15:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id m4so6337825pgk.0
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 01:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SRUHU2QOsr8egRPPlk4MTj+0Frik5f+SAG2Vd/eNfZc=;
 b=ggBgiG0A/m4AKO4/KvI/wfda1JwupneO5cjQG1zy4KTPI1TS93go5w7Hnxjp3TIOmb
 VuneEnQYvSTydGqu3YFMElp4AFT5GkT+o7GxCcAxnkrJayEGZ6gbQJAnIaZPL2TMIHKK
 j+7LdVefB7NZJ0uUu+KfqGgI280YVCEKZgdvkI81Q5HHB6RCpmzjXe/HRVrEtkcH59Ls
 vO3m1LUU/vJl7CzmyisT3PAGC8xWK/HM4HCzjVlkvozxmn3hFe+vvCkTIQHG8HW0EpDi
 I3acPqS1OsT0PsqC8DOIUO3O7lLLMoC/yHKrGQJjwN+F3iE5Nha57lbWpYpO30gk8XO/
 fWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SRUHU2QOsr8egRPPlk4MTj+0Frik5f+SAG2Vd/eNfZc=;
 b=TkBH3iQDuGv57L/E9f3tiIFIDNO2p2qavvFdaRTe1qCe2mjHtKiDJyLhsxPfrJWxc3
 hXI9h3xFYNi/LhkIjtgA9tvwYz/7r1g+bN1se2D+TQcq8ZQl11qV5E7G10cPTWNDvVQF
 U9ihEzSN8BI01tHTZT5hh7m+SKO/3Kg+rmvQs6TUm3w9PPDClk3DcdKVJnsMrxn3x7o9
 7q7sjRpqq/5RjP3tIfzl6LJGrGejeY8nNkWGomUfnzCl13GFFeCXuPfziSik8dqEnZDM
 BIEix3QKqSKYe8I92Fa/KV/2XDKsCS3inljX/GVtlIVM9BsRdQQ59L4Cmj3MDl5VMVP5
 ychg==
X-Gm-Message-State: APjAAAWA2gUwW/0NdoK3D7gXS8Uf+qhgdmww4oDdsoo6HaRosZZbx/K2
 P066o5cWcHzgGwDvo3Beibw=
X-Google-Smtp-Source: APXvYqyD7b6ITkJLJPmFElrzNqLRRghLVlkLMk/HUi2Rv5PlOihWfO45JQkrVo+gm5RPPXeYk+mq/g==
X-Received: by 2002:a65:6406:: with SMTP id a6mr7333816pgv.393.1563092099388; 
 Sun, 14 Jul 2019 01:14:59 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z13sm618695pfa.94.2019.07.14.01.14.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 01:14:58 -0700 (PDT)
Date: Sun, 14 Jul 2019 17:14:56 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
Message-ID: <20190714081456.GD2993@minwoo-desktop>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712180211.26333-4-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_011501_123415_12666E5B 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-12 11:02:11, Sagi Grimberg wrote:
> Provide userspace with nvme discovery controller device instance,
> controller traddr and trsvcid. We'd expect userspace to handle
> this event by issuing a discovery + connect.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Sagi, Thanks for this patch!

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
