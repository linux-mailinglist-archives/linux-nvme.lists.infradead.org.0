Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1CCEF0D4
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 23:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PVRQAXgItz2e0MzvwRRnD8rA4RfrlnNQzIEkAGgKTM=; b=If7Hkdl8y+4Ngm
	1FOTSOgXF0k1qqGgwHaL25CH99ymBW2NjTP+XhxIn0TTUDQEs9k1j7qZD0hLIcd11pRDM8KT+jtM7
	rjBBpVtPViPRzOiHDhK/JSI2Zyp3OVZqdJ/XGRqx98I3Cd8NF//FRJgntHxDv1jLDRWu5gaUF7dvg
	R8OkhavFKpiF0ZoHebykiMs0T7Oi+krV83nLFJ2DZgS1PW15Qd9YCCXpWdLt5gKlafuPeet/RLrMK
	OtSfuMtnbXH9I09lJbGPGqrt7pdl39nIULechPVIoJTKVFP9aerqdWN30tteLIZKQh+lRAnE75Pit
	mcKYFeonmeaj8cpIAcgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlHe-00088k-5n; Mon, 04 Nov 2019 22:57:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlHZ-00088M-3h
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 22:57:10 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6BAB20663;
 Mon,  4 Nov 2019 22:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572908228;
 bh=CW40oj6RN9mMVkdvaRHQAu+yvUjHH2qVAZH3wztExdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y8+BFN979kPnLNooRgnKz1wlX1d5DoX/U63h0q0Ikyhha0wtk/bcAbtQMavo3jmsQ
 Yfl0UtHbc6EChONCINrpF6q1iPsxxM0KhM2AQrKtFDusDqrtMy/przDcaGQI+ElwFc
 saZ/cgucbLgcEtISiNOlAXIRdZiZ3TldCUp65NvE=
Date: Tue, 5 Nov 2019 07:57:05 +0900
From: Keith Busch <kbusch@kernel.org>
To: wenxiong@linux.vnet.ibm.com
Subject: Re: [PATCH] nvme-cli: improvment critical warning format
Message-ID: <20191104225705.GB21282@redsun51.ssa.fujisawa.hgst.com>
References: <1572895699-3096-1-git-send-email-wenxiong@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572895699-3096-1-git-send-email-wenxiong@linux.vnet.ibm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_145709_181369_1E4AD2CC 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: keith.busch@intel.com, linux-nvme@lists.infradead.org, wenxiong@us.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 01:28:19PM -0600, wenxiong@linux.vnet.ibm.com wrote:
> +		json_object_add_value_int(root,"   [0:0]:Available Spare", smart->critical_warning & 0x01);
> +		json_object_add_value_int(root,"   [1:1]:Temp. Threshold", (smart->critical_warning & 0x02) >> 1);
> +		json_object_add_value_int(root,"   [2:2]:NVM subsystem Reliability", (smart->critical_warning & 0x04) >> 2);
> +		json_object_add_value_int(root,"   [3:3]:Read-only", (smart->critical_warning & 0x08) >> 3);
> +		json_object_add_value_int(root,"   [4:4]:Volatile mem. backup failed", (smart->critical_warning & 0x10) >> 4);
> +		json_object_add_value_int(root,"   [5:5]:Persistent Mem. RO", (smart->critical_warning & 0x20) >> 5);

That doesn't look like a very friendly json field name. Isn't the ':' a
special character?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
