Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1DB1C68EA
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 08:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+Uj/PzA5oSJwOWfiSHn5eZmTjFRONfwmym0r0nhA2k=; b=KtIsZ8KkPhQn10
	0TfaPW6ozpOFhXrFdUmQsZMpfR42oK4+ZvCOn+yDDcNTwaXYQgWDqBAIGJD1QKUyoX75gbFj5mXIE
	KugYr/Ljg8mth3qUue4yGwgPQiUTv3nr+r06eq7PijUp8TPgGD6Ebv+kthaZP2+VZwFyLVuWFK5qn
	RYYUz2tvTTx2GWpjkheOVLafkv2oWVdL9pgZmf48Es9k+36bwCkb0ywIzFgP1OXhz45Od1ak2iVzw
	MoWujvzTV0n6mlFPOKoZD30gGaX685SwZxoYrC4V0LIbo7+KODbMcxDORYtE8RUaDZlpj90TrPkBz
	COEer3me4600VPWrlk/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDZc-0004TK-2I; Wed, 06 May 2020 06:30:28 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jWDZX-0004Sq-TI; Wed, 06 May 2020 06:30:23 +0000
Date: Tue, 5 May 2020 23:30:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: How to setup nvme-loop with multipath
Message-ID: <20200506063023.GA6928@infradead.org>
References: <a3692e2f-c3a3-4d2a-8dc7-b49058e01347@default>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a3692e2f-c3a3-4d2a-8dc7-b49058e01347@default>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, May 03, 2020 at 01:14:25PM -0700, Dongli Zhang wrote:
> Hi nvme developers,
> 
> Would you please help confirm if it is feasible to support multi-path (indeed
> shared namespace as id->cmic is always set for nvme-over-fabric) for nvme-loop
> so that we would be able to have much more complex topology configuration for
> nvme multi-path.
> 
> Below is my sample json file. While both disk1.img and disk2.img are belong to
> 'testnqn', disk3.img is belong to 'testnqn2'.
> 
> Is there any way to have disk2.img as shared namespace used by both 'testnqn'
> and 'testnqn2'?

All the namespace are shared by default.  Just run your connect command
line again and you get another path (just use a different traddr to
make sure duplicates aren't sorted out)

This is my simple test connect script:

---
et -e
set +x

HOSTNQN=nqn.2014-08.org.nvmexpress:NVMf:uuid:77dca664-0d3e-4f67-b8b2-04c70e3f991f
NQN=nqn.2014-08.org.nvmexpress:NVMf:uuid:77dca664-0d3e-4f67-b8b2-04c70e3f991d

echo "transport=loop,hostnqn=$HOSTNQN,nqn=$NQN" > /dev/nvme-fabrics
echo "transport=loop,hostnqn=$HOSTNQN,nqn=$NQN,traddr=192.168.7.68" > /dev/nvme-
fabrics


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
